import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
// import 'package:shamagri_latest_flutter_version/domain/list_sold/i_list_sold_repository.dart';

import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';

part 'list_sold_invoice_event.dart';
part 'list_sold_invoice_state.dart';
part 'list_sold_invoice_bloc.freezed.dart';

@injectable
class ListSoldInvoiceBloc
    extends Bloc<ListSoldInvoiceEvent, ListSoldInvoiceState> {
  final ISoldRepository _soldRepository;

  ListSoldInvoiceBloc(this._soldRepository)
      : super(const ListSoldInvoiceState.initial()) {
    on<_WatchFirstTen>(_watchFirstTen);
    on<_WatchAfterTen>(_watchAfterTen);
    on<_SoldReceived>(_listSoldReceived);
  }
  Logger logger = Logger();
  StreamSubscription<Either<SoldNotFormFailure, List<SoldNotForm>>>?
      _listSoldStreamSubscription;
  List<SoldNotForm> soldInvoiceAll = [];

  FutureOr<void> _watchFirstTen(
      _WatchFirstTen e, Emitter<ListSoldInvoiceState> emit) async {
    emit(const ListSoldInvoiceState.loadInProgress());
    await _listSoldStreamSubscription?.cancel();
    _listSoldStreamSubscription = _soldRepository.firstTen(e.soldId!).listen(
      (failureOrNotes) {
        failureOrNotes.fold((f) => null, (listBought) {
          if (listBought.length == 0) {
            return add(ListSoldInvoiceEvent.listSoldReceived(failureOrNotes,
                firstTenCountIsZero: true, afterTenCountIsZeroToNine: false));
          }
        });
        return add(ListSoldInvoiceEvent.listSoldReceived(failureOrNotes,
            firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
      },
    );
  }

  FutureOr<void> _watchAfterTen(
      _WatchAfterTen e, Emitter<ListSoldInvoiceState> emit) async {
    emit(const ListSoldInvoiceState.loadInProgress());
    await _listSoldStreamSubscription?.cancel();
    _listSoldStreamSubscription = _soldRepository.afterTen().listen(
      (failureOrNotes) {
        failureOrNotes.fold((f) => null, (listBought) {
          if (listBought.length < 10 || listBought.length >= 0) {
            logger.i("watcherAfterTen:      " +
                listBought.toList().length.toString());
            return add(ListSoldInvoiceEvent.listSoldReceived(failureOrNotes,
                firstTenCountIsZero: false, afterTenCountIsZeroToNine: true));
          }
          return add(ListSoldInvoiceEvent.listSoldReceived(failureOrNotes,
              firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
        });
      },
    );
  }

  FutureOr<void> _listSoldReceived(
      _SoldReceived e, Emitter<ListSoldInvoiceState> emit) async {
    e.failureOrSold!.fold(
      (f) => emit(ListSoldInvoiceState.loadFailure(f)),
      (notes) {
        bool? firstLoad = false;
        if (soldInvoiceAll.length == 0) firstLoad = true;
        soldInvoiceAll = soldInvoiceAll + notes;

        bool? here = false;
        for (int j = 0; j < notes.length; j++) {
          for (int i = 0; i < soldInvoiceAll.length; i++) {
            if (soldInvoiceAll[i].id == notes[j].id) {
              soldInvoiceAll[i] = notes[j];
              if (!firstLoad) here = true;
              // firstLoad = true;
            }
          }
        }
        if (here!) {
          for (int j = 0; j < notes.length; j++) {
            // soldInvoiceAll[i] = notes[j];
            final index = soldInvoiceAll.indexOf(notes[j], 2);
            soldInvoiceAll.removeAt(index);
          }
        }

        //   //* first load removed all values from soldInvoiceAll

        // }
        // soldInvoiceAll.sortBy((element) => element.updatedAt);
        // soldInvoiceAll.sort(
        //     (a, b) => a..toString().compareTo(b.updatedAt.toString()));
        // logger.i("soldInvoiceAll:      " + soldInvoiceAll.toList().toString());
        // logger.i("soldInvoiceAll:      " + soldInvoiceAll.toList().length.toString());
        return emit(ListSoldInvoiceState.loadSuccess(soldInvoiceAll,
            watchFirstTenCountIsZero: e.firstTenCountIsZero,
            watchAfterTenCountIsZeroToNine: e.afterTenCountIsZeroToNine));
      },
    );
  }

  /* @override
  Stream<ListSoldInvoiceState> mapEventToState(
    ListSoldInvoiceEvent event,
  ) async* {
    yield* event.map(
      watchFirstTen: (e) async* {
        yield const ListSoldInvoiceState.loadInProgress();
        await _listSoldStreamSubscription?.cancel();
        _listSoldStreamSubscription = _soldRepository
            .firstTen(e.soldId!)
            .asStream()
            .listen((failureOrSold) {
          failureOrSold.fold((f) => null, (listSold) {
            // if (listSold.length >= 0 || listSold.length < 10) {
            // not required because only if its 0 different ui has to be shown
            if (listSold.length == 0) {
              return add(ListSoldInvoiceEvent.listSoldReceived(failureOrSold,
                  firstTenCountIsZero: true, afterTenCountIsZeroToNine: false));
            }
            return add(ListSoldInvoiceEvent.listSoldReceived(failureOrSold,
                firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
          });
        });
      },
      watchAfterTen: (e) async* {
        yield const ListSoldInvoiceState.loadInProgress();
        await _listSoldStreamSubscription?.cancel();
        _listSoldStreamSubscription =
            _soldRepository.afterTen().asStream().listen((failureOrSold) {
          failureOrSold.fold((f) => null, (listSold) {
            if (listSold.length >= 0 || listSold.length < 10) {
              return add(ListSoldInvoiceEvent.listSoldReceived(failureOrSold,
                  firstTenCountIsZero: true, afterTenCountIsZeroToNine: false));
            }
            return add(ListSoldInvoiceEvent.listSoldReceived(failureOrSold,
                firstTenCountIsZero: false, afterTenCountIsZeroToNine: false));
          });
        });
      },
      listSoldReceived: (e) async* {
        yield e.failureOrSold!.fold(
          (f) => ListSoldInvoiceState.loadFailure(f),
          (soldInvoice) {
            soldInvoiceAll = soldInvoiceAll + soldInvoice;
            return ListSoldInvoiceState.loadSuccess(soldInvoiceAll,
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
