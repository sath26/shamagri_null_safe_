import 'package:equatable/equatable.dart';

abstract class ItemListEvent extends Equatable {
  const ItemListEvent();

  @override
  List<Object> get props => [];
}

class FilterConditionsUpdated extends ItemListEvent {
  const FilterConditionsUpdated();
}

class SearchQueryUpdated extends ItemListEvent {
  const SearchQueryUpdated();
}

class SourceUpdated extends ItemListEvent {
  const SourceUpdated();
}
