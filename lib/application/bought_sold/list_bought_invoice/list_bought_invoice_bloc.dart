import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
// import 'package:mobile_shamagri_bloc/domain/list_bought/i_list_bought_repository.dart';

import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/i_bought_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought_failure.dart';

part 'list_bought_invoice_event.dart';
part 'list_bought_invoice_state.dart';
part 'list_bought_invoice_bloc.freezed.dart';

@injectable
class ListBoughtInvoiceBloc
    extends Bloc<ListBoughtInvoiceEvent, ListBoughtInvoiceState> {
  final IBoughtRepository _boughtRepository;

  ListBoughtInvoiceBloc(this._boughtRepository)
      : super(const ListBoughtInvoiceState.initial());

  StreamSubscription<Either<BoughtNotFormFailure, List<BoughtNotForm>>>?
      _listBoughtStreamSubscription;
  List<BoughtNotForm> boughtInvoiceAll = [];

  @override
  Stream<ListBoughtInvoiceState> mapEventToState(
    ListBoughtInvoiceEvent event,
  ) async* {
    yield* event.map(
      watchFirstTen: (e) async* {
        yield const ListBoughtInvoiceState.loadInProgress();
        await _listBoughtStreamSubscription?.cancel();
        _listBoughtStreamSubscription = _boughtRepository
            .firstTen(e.boughtId!)
            .asStream()
            .listen((failureOrBought) {
          failureOrBought.fold((f) => null, (listBought) {
            // if (listBought.length >= 0 || listBought.length < 10) {
            //* not required because only if its 0 different ui has to be shown
            if (listBought.length == 0) {
              return add(ListBoughtInvoiceEvent.listBoughtReceived(
                  failureOrBought,
                  firstTenCountIsZero: true,
                  afterTenCountIsZeroToNine: false));
            }
            return add(ListBoughtInvoiceEvent.listBoughtReceived(
                failureOrBought,
                firstTenCountIsZero: false,
                afterTenCountIsZeroToNine: false));
          });
        });
      },
      watchAfterTen: (e) async* {
        yield const ListBoughtInvoiceState.loadInProgress();
        await _listBoughtStreamSubscription?.cancel();
        _listBoughtStreamSubscription =
            _boughtRepository.afterTen().asStream().listen((failureOrBought) {
          failureOrBought.fold((f) => null, (listBought) {
            if (listBought.length >= 0 || listBought.length < 10) {
              return add(ListBoughtInvoiceEvent.listBoughtReceived(
                  failureOrBought,
                  firstTenCountIsZero: true,
                  afterTenCountIsZeroToNine: false));
            }
            return add(ListBoughtInvoiceEvent.listBoughtReceived(
                failureOrBought,
                firstTenCountIsZero: false,
                afterTenCountIsZeroToNine: false));
          });
        });
      },
      listBoughtReceived: (e) async* {
        yield e.failureOrBought!.fold(
          (f) => ListBoughtInvoiceState.loadFailure(f),
          (boughtInvoice) {
            boughtInvoiceAll = boughtInvoiceAll + boughtInvoice;
            return ListBoughtInvoiceState.loadSuccess(boughtInvoiceAll,
                watchFirstTenCountIsZero: e.firstTenCountIsZero,
                watchAfterTenCountIsZeroToNine: e.afterTenCountIsZeroToNine);
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _listBoughtStreamSubscription?.cancel();
    return super.close();
  }
}
