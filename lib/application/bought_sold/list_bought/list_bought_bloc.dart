import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/i_list_bought_repository.dart';

import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought_failure.dart';
import 'package:shamagri_latest_flutter_version/themes.dart';

part 'list_bought_event.dart';
part 'list_bought_state.dart';
part 'list_bought_bloc.freezed.dart';

@injectable
class ListBoughtBloc extends Bloc<ListBoughtEvent, ListBoughtState> {
  final IListBoughtRepository _listBoughtRepository;
  MyThemes? _lastCount;
  ListBoughtBloc(this._listBoughtRepository)
      : super(const ListBoughtState.initial()) {
    on<_WatchFirstTen>(_watchFirstTen);
    on<_WatchAfterTen>(_watchAfterTen);
    on<_ListBoughtReceived>(_listBoughtReceived);
  }

  List<ListBought> notesAll = [];
  // notesAll.addAll(notes);
  Logger logger = new Logger();
  StreamSubscription<Either<ListBoughtFailure, List<ListBought>>>?
      _listBoughtStreamSubscription;
  FutureOr<void> _watchFirstTen(
      _WatchFirstTen e, Emitter<ListBoughtState> emit) async {
    emit(const ListBoughtState.loadInProgress());
    await _listBoughtStreamSubscription?.cancel();
    _listBoughtStreamSubscription = _listBoughtRepository.firstTen().listen(
      (failureOrNotes) {
        failureOrNotes.fold((f) => null, (listBought) {
          if (listBought.length == 0) {
            return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                firstTenCountIsZero: true, afterTenCountIsZero: false));
          }
        });
        return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
            firstTenCountIsZero: false, afterTenCountIsZero: false));
      },
    );
  }

  FutureOr<void> _watchAfterTen(
      _WatchAfterTen e, Emitter<ListBoughtState> emit) async {
    emit(const ListBoughtState.loadInProgress());
    await _listBoughtStreamSubscription?.cancel();
    _listBoughtStreamSubscription = _listBoughtRepository.afterTen().listen(
      (failureOrNotes) {
        failureOrNotes.fold((f) => null, (listBought) {
          if (listBought.length < 10 || listBought.length >= 0) {
            logger.i("watcherAfterTen:      " +
                listBought.toList().length.toString());
            return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                firstTenCountIsZero: false, afterTenCountIsZero: true));
          }
          return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
              firstTenCountIsZero: false, afterTenCountIsZero: false));
        });
      },
    );
  }

  FutureOr<void> _listBoughtReceived(
      _ListBoughtReceived e, Emitter<ListBoughtState> emit) async {
    e.failureOrListBought!.fold(
      (f) => emit(ListBoughtState.loadFailure(f)),
      (notes) {
        bool? firstLoad = false;
        if (notesAll.length == 0) firstLoad = true;
        notesAll = notesAll + notes;

        bool? here = false;
        for (int j = 0; j < notes.length; j++) {
          for (int i = 0; i < notesAll.length; i++) {
            if (notesAll[i].id == notes[j].id) {
              notesAll[i] = notes[j];
              if (!firstLoad) here = true;
              // firstLoad = true;
            }
          }
        }
        if (here!) {
          for (int j = 0; j < notes.length; j++) {
            // notesAll[i] = notes[j];
            final index = notesAll.indexOf(notes[j], 2);
            notesAll.removeAt(index);
          }
        }

        //   //* first load removed all values from notesAll

        // }
        // notesAll.sortBy((element) => element.updatedAt);
        notesAll.sort(
            (a, b) => a.updatedAt.toString().compareTo(b.updatedAt.toString()));
        logger.i("notesAll:      " + notesAll.toList().toString());
        logger.i("notesAll:      " + notesAll.toList().length.toString());
        return emit(ListBoughtState.loadSuccess(notesAll,
            watchFirstTenCountIsZero: e.firstTenCountIsZero,
            watchAfterTenCountIsZero: e.afterTenCountIsZero));
      },
    );
  }
/* 
  @override
  Stream<ListBoughtState> mapEventToState(
    ListBoughtEvent event,
  ) async* {
    yield* event.map(
      watchFirstTen: (e) async* {
        yield const ListBoughtState.loadInProgress();
        await _listBoughtStreamSubscription?.cancel();
        _listBoughtStreamSubscription =
            _listBoughtRepository.firstTen().asStream().listen(
          (failureOrNotes) {
            failureOrNotes.fold((f) => null, (listBought) {
              if (listBought.length == 0) {
                return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                    firstTenCountIsZero: true, afterTenCountIsZero: false));
              }
            });
            return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                firstTenCountIsZero: false, afterTenCountIsZero: false));
          },
        );
      },
      watchAfterTen: (e) async* {
        yield const ListBoughtState.loadInProgress();
        await _listBoughtStreamSubscription?.cancel();
        _listBoughtStreamSubscription =
            _listBoughtRepository.afterTen().asStream().listen(
          (failureOrNotes) {
            failureOrNotes.fold((f) => null, (listBought) {
              if (listBought.length < 10 || listBought.length >= 0) {
                logger.i("watcherAfterTen:      " +
                    listBought.toList().length.toString());
                return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                    firstTenCountIsZero: false, afterTenCountIsZero: true));
              }
              return add(ListBoughtEvent.listBoughtReceived(failureOrNotes,
                  firstTenCountIsZero: false, afterTenCountIsZero: false));
            });
          },
        );
      },
      listBoughtReceived: (e) async* {
        yield e.failureOrListBought!.fold(
          (f) => ListBoughtState.loadFailure(f),
          (notes) {
            notesAll = notesAll + notes;
            logger.i("notesAll:      " + notesAll.toList().toString());
            logger.i("notesAll:      " + notesAll.toList().length.toString());
            return ListBoughtState.loadSuccess(notesAll,
                watchFirstTenCountIsZero: e.firstTenCountIsZero,
                watchAfterTenCountIsZero: e.afterTenCountIsZero);
          },
        );
        /*  yield state.maybeWhen(
            (countOfAfterTen) => ListBoughtState(countOfAfterTen: 10),
            orElse: null); */
      },
    );
  } */

  @override
  Future<void> close() async {
    await _listBoughtStreamSubscription?.cancel();
    return super.close();
  }
}
