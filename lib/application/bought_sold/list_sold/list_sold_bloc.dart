import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/i_list_sold_repository.dart';

import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold_failure.dart';

part 'list_sold_event.dart';
part 'list_sold_state.dart';
part 'list_sold_bloc.freezed.dart';

@injectable
class ListSoldBloc extends Bloc<ListSoldEvent, ListSoldState> {
  final IListSoldRepository _listSoldRepository;

  ListSoldBloc(this._listSoldRepository)
      : super(const ListSoldState.initial()) {
    on<_WatchFirstTen>(_watchFirstTen);
    on<_WatchAfterTen>(_watchAfterTen);
    on<_ListSoldReceived>(_listSoldReceived);
  }
  FutureOr<void> _watchFirstTen(
      _WatchFirstTen e, Emitter<ListSoldState> emit) async {
    emit(const ListSoldState.loadInProgress());
    await _listSoldStreamSubscription?.cancel();
    _listSoldStreamSubscription =
        _listSoldRepository.firstTen().listen((failureOrNotes) {
      logger.v("null on receiver:    " + failureOrNotes.toString());
      failureOrNotes.fold((f) => {logger.i("this is called")}, (listBought) {
        // if (listBought.length >= 0 || listBought.length < 10) {
        //* not required because only if its 0 different ui has to be shown
        if (listBought.length == 0) {
          return add(ListSoldEvent.listSoldReceived(failureOrNotes,
              firstTenCountIsZero: true, afterTenCountIsZeroToNine: false));
        }
      });
      return add(ListSoldEvent.listSoldReceived(failureOrNotes,
          firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
      //* whether its inside fold or outside its same because
      //* return wont allow to run code further!!
    });
  }

  FutureOr<void> _watchAfterTen(
      _WatchAfterTen e, Emitter<ListSoldState> emit) async {
    emit(const ListSoldState.loadInProgress());
    await _listSoldStreamSubscription?.cancel();
    _listSoldStreamSubscription =
        _listSoldRepository.afterTen().listen((failureOrNotes) {
      failureOrNotes!.fold((f) => null, (listBought) {
        if (listBought.length >= 0 || listBought.length < 10) {
          return add(ListSoldEvent.listSoldReceived(failureOrNotes,
              firstTenCountIsZero: false, afterTenCountIsZeroToNine: true));
        }
        return add(ListSoldEvent.listSoldReceived(failureOrNotes,
            firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
      });
    });
  }

  FutureOr<void> _listSoldReceived(
      _ListSoldReceived e, Emitter<ListSoldState> emit) async {
    return e.failureOrListSold!.fold(
      (f) => emit(ListSoldState.loadFailure(f)),
      (sold) {
        bool? firstLoad = false;
        if (soldAll.length == 0) firstLoad = true;
        soldAll = soldAll + sold;

        bool? here = false;
        for (int j = 0; j < sold.length; j++) {
          for (int i = 0; i < soldAll.length; i++) {
            if (soldAll[i].id == sold[j].id) {
              soldAll[i] = sold[j];
              if (!firstLoad) here = true;
              // firstLoad = true;
            }
          }
        }
        if (here!) {
          for (int j = 0; j < sold.length; j++) {
            // soldAll[i] = sold[j];
            final index = soldAll.indexOf(sold[j], 2);
            soldAll.removeAt(index);
          }
        }

        //   //* first load removed all values from soldAll

        // }
        // soldAll.sortBy((element) => element.updatedAt);
        soldAll.sort(
            (a, b) => a.updatedAt.toString().compareTo(b.updatedAt.toString()));
        // soldAll = soldAll + sold;
        return emit(ListSoldState.loadSuccess(soldAll,
            watchFirstTenCountIsZero: e.firstTenCountIsZero,
            watchAfterTenCountIsZeroToNine: e.afterTenCountIsZeroToNine));
      },
    );
  }

  StreamSubscription<Either<ListSoldFailure, List<ListSold>>?>?
      _listSoldStreamSubscription;
  List<ListSold> soldAll = [];
  Logger logger = new Logger();
/* 
  @override
  Stream<ListSoldState> mapEventToState(
    ListSoldEvent event,
  ) async* {
    yield* event.map(
      watchFirstTen: (e) async* {
        yield const ListSoldState.loadInProgress();
        await _listSoldStreamSubscription?.cancel();
        _listSoldStreamSubscription =
            _listSoldRepository.firstTen().asStream().listen((failureOrsold) {
          logger.v("null on receiver:    " + failureOrNotes.toString());
          failureOrNotes.fold((f) => {logger.i("this is called")},
              (listBought) {
            // if (listBought.length >= 0 || listBought.length < 10) {
            // not required because only if its 0 different ui has to be shown
            if (listBought.length == 0) {
              return add(ListSoldEvent.listSoldReceived(failureOrNotes,
                  firstTenCountIsZero: true, afterTenCountIsZeroToNine: false));
            }
          });
          return add(ListSoldEvent.listSoldReceived(failureOrNotes,
              firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
          // whether its inside fold or outside its same because
          //return wont allow to run code further!!
        });
      },
      watchAfterTen: (e) async* {
        yield const ListSoldState.loadInProgress();
        await _listSoldStreamSubscription?.cancel();
        _listSoldStreamSubscription =
            _listSoldRepository.afterTen().asStream().listen((failureOrNotes) {
          failureOrNotes!.fold((f) => null, (listBought) {
            if (listBought.length >= 0 || listBought.length < 10) {
              return add(ListSoldEvent.listSoldReceived(failureOrNotes,
                  firstTenCountIsZero: false, afterTenCountIsZeroToNine: true));
            }
            return add(ListSoldEvent.listSoldReceived(failureOrNotes,
                firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
          });
        });
      },
      listSoldReceived: (e) async* {
        yield e.failureOrListSold!.fold(
          (f) => ListSoldState.loadFailure(f),
          (sold) {
            soldAll = soldAll + sold;
            return ListSoldState.loadSuccess(soldAll,
                watchFirstTenCountIsZero: e.firstTenCountIsZero,
                watchAfterTenCountIsZeroToNine: e.afterTenCountIsZeroToNine);
          },
        );
      },
    );
  } */

  @override
  Future<void> close() async {
    await _listSoldStreamSubscription?.cancel();
    return super.close();
  }
}
