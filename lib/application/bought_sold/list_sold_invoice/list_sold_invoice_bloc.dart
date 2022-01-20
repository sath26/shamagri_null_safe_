import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
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
      : super(const ListSoldInvoiceState.initial());

  StreamSubscription<Either<SoldNotFormFailure, List<SoldNotForm>>>?
      _listSoldStreamSubscription;
  List<SoldNotForm> soldInvoiceAll = [];

  @override
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
            //* not required because only if its 0 different ui has to be shown
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
  }

  @override
  Future<void> close() async {
    await _listSoldStreamSubscription?.cancel();
    return super.close();
  }
}
