import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_list_manager/src/item_list/item_list_event.dart';
import 'package:meta/meta.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import '../filter_conditions/filter_conditions_bloc.dart';
import '../item_source.dart';
import '../search_query/search_query.dart';
import '../utils.dart';

part 'item_list_state.dart';

enum _itemListEvent {
  filterConditionsUpdated,
  searchQueryUpdated,
  sourceUpdated
}

/// {@template itemlistbloc}
/// Attaches to the provided [_filterConditionsBloc], [_searchQueryCubit],
/// and [_sourceBloc] and uses supplied [_searchProperties]
/// in order to generate a list of items that should be rendered to the UI.
///
/// The active conditions from the supplied [_filterConditionsBloc]
/// are additive, so items matching *any* of the active conditions will be
/// returned. Once the source items have been filtered, the search query
/// will be applied to any remaining items to generate the final list state.
///
/// There should be no need to ever manually construct an [ItemListBloc].
/// It should, instead, be retrieved from within the `ListManager`
/// in order to render your list UI however you see fit.
/// {@endtemplate}
class ItemListBloc<I extends ItemClassWithAccessor, T extends ItemSourceState>
    extends Bloc<_ItemListEvent, ItemListState> {
  final FilterConditionsBloc _filterConditionsBloc;
  final SearchQueryCubit _searchQueryCubit;
  final Bloc _sourceBloc;
  final List<String> _searchProperties;

  late StreamSubscription _filterConditionsSubscription;
  late StreamSubscription _searchQuerySubscription;
  late StreamSubscription _sourceSubscription;

  /// {@macro itemlistbloc}
  ItemListBloc({
    required FilterConditionsBloc filterConditionsBloc,
    required SearchQueryCubit searchQueryCubit,
    required Bloc sourceBloc,
    List<String> searchProperties = const [],
  })  : /*  assert(filterConditionsBloc != null),
        assert(searchQueryCubit != null),
        assert(sourceBloc != null), */
        _filterConditionsBloc = filterConditionsBloc,
        _searchQueryCubit = searchQueryCubit,
        _sourceBloc = sourceBloc,
        _searchProperties = searchProperties,
        super(const NoSourceItems()) {
    /*  on((event, emit) {
      add(_itemListEvent.filterConditionsUpdated);
    });

    on((event, emit) {
      add(_itemListEvent.searchQueryUpdated);
    });

    on((event, emit) {
      add(_itemListEvent.sourceUpdated);
    }); */
    _filterConditionsSubscription = _filterConditionsBloc.stream.listen((_) {
      add(_ExternalDataUpdated());
    });

    _searchQuerySubscription = _searchQueryCubit.stream.listen((_) {
      add(_ExternalDataUpdated());
    });

    _sourceSubscription = _sourceBloc.stream.listen((_) {
      add(_ExternalDataUpdated());
    });
    on<_ExternalDataUpdated>(_onEvent);
  }
  _onEvent(_ExternalDataUpdated event, Emitter<ItemListState> emit) {
    if (_filterConditionsBloc.state is! ConditionsInitialized ||
        _sourceBloc.state is! T) {
      return emit(const NoSourceItems());
      // return;
    }
    /* if (event == _itemListEvent.filterConditionsUpdated) {
      add(_itemListEvent.filterConditionsUpdated);
    } else if (event == _itemListEvent.searchQueryUpdated) {
      add(_itemListEvent.searchQueryUpdated);
    } else {
      add(_itemListEvent.sourceUpdated);
    } */
    /* if (event != _itemListEvent.sourceUpdated &&
        event != _itemListEvent.filterConditionsUpdated &&
        event != _itemListEvent.searchQueryUpdated) {
      return;
    } */

    // final items = (_sourceBloc.state as T).items;
    final filterResults = _filterSource(_sourceBloc.state.items);
    final searchResults = _searchSource(_searchQueryCubit.state, filterResults);

    /* if (searchResults.isEmpty) {
      yield ItemEmptyState();
    } else {
      yield ItemResults(searchResults.toList());
    } */
    return emit(searchResults.isEmpty
        ? const ItemEmptyState()
        : ItemResults(searchResults.toList()));
  }

/* 
  @override
  Stream<ItemListState> mapEventToState(
    _itemListEvent event,
  ) async* {
    if (_filterConditionsBloc?.state is! ConditionsInitialized ||
        _sourceBloc?.state is! T) {
      yield NoSourceItems();
      return;
    }

    if (event != _itemListEvent.sourceUpdated &&
        event != _itemListEvent.filterConditionsUpdated &&
        event != _itemListEvent.searchQueryUpdated) {
      return;
    }

    final items = (_sourceBloc?.state as T).items;
    final filterResults = _filterSource(items);
    final searchResults =
        _searchSource(_searchQueryCubit!.state, filterResults);

    if (searchResults.isEmpty) {
      yield ItemEmptyState();
    } else {
      yield ItemResults(searchResults.toList());
    }
  } */
/* Iterable<ItemClassWithAccessor> _filterSource(
      List<ItemClassWithAccessor> items) { */
  Iterable<I> _filterSource(List<I> items) {
    final filterState = (_filterConditionsBloc.state as ConditionsInitialized);
    final activeAndConditions = filterState.activeAndConditions;
    final activeOrConditions = filterState.activeOrConditions;

    if (activeAndConditions.isEmpty && activeOrConditions.isEmpty) {
      return items;
    }

    return items.where((item) {
      final hasMatchedOrConditions = activeOrConditions.isEmpty
          ? true
          : activeOrConditions.any(
              (conditionKey) => _evaluateFilterCondition(item, conditionKey));

      if (!hasMatchedOrConditions) {
        return false;
      }

      final hasMatchedAndConditions = activeAndConditions.isEmpty
          ? true
          : activeAndConditions.every(
              (conditionKey) => _evaluateFilterCondition(item, conditionKey));

      return hasMatchedAndConditions && hasMatchedOrConditions;
    });
  }

  // Iterable<ItemClassWithAccessor> _searchSource(
  Iterable<I> _searchSource(String searchQuery, Iterable<I> items) {
    // String searchQuery, Iterable<ItemClassWithAccessor> items) {
    if (searchQuery.isEmpty) {
      return items;
    }

    // Search queries are stored lowercase, so we want to match
    // against a lowercase value as well.
    return items.where((item) => _searchProperties.any((property) {
          final value = item[property];
          return value is String
              ? value.toLowerCase().contains(searchQuery)
              : false;
        }));
  }

  bool _evaluateFilterCondition(I item, String conditionKey) {
    // ItemClassWithAccessor item, String conditionKey) {
    final parsedConditionKey = splitConditionKey(conditionKey);

    final property = parsedConditionKey[0];
    final itemValue = item[property];
    final targetValue = parsedConditionKey[1];

    if (itemValue is bool) {
      return itemValue.toString() == targetValue.toLowerCase();
    }

    return itemValue == targetValue;
  }

  @override
  Future<void> close() async {
    await _filterConditionsSubscription.cancel();
    await _searchQuerySubscription.cancel();
    await _sourceSubscription.cancel();

    return super.close();
  }
}

class _ExternalDataUpdated extends _ItemListEvent {}

abstract class _ItemListEvent {}
