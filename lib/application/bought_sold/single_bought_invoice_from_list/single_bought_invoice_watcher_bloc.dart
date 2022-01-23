import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
// import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/i_bought_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/bought_value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';

part 'single_bought_invoice_watcher_event.dart';
part 'single_bought_invoice_watcher_state.dart';
part 'single_bought_invoice_watcher_bloc.freezed.dart';

@injectable
class SingleBoughtInvoiceWatcherBloc extends Bloc<
    SingleBoughtInvoiceWatcherEvent, SingleBoughtInvoiceWatcherState> {
  final IBoughtRepository _boughtRepository;

  SingleBoughtInvoiceWatcherBloc(this._boughtRepository)
      : super(SingleBoughtInvoiceWatcherState.initial()) {
    on<_Initialized>(initialized);
    on<_IsApprovedChanged>(isApprovedChanged);
    on<_Updated>(updated);
  }
  FutureOr<void> initialized(
      _Initialized e, Emitter<SingleBoughtInvoiceWatcherState> emit) {
    return e.afterSelectBoughtOption.fold(
      () => emit(state),
      (initialBought) => emit(state.copyWith(
        bill: initialBought,
        isEditing: true,
      )),
    );
  }

  FutureOr<void> isApprovedChanged(
      _IsApprovedChanged e, Emitter<SingleBoughtInvoiceWatcherState> emit) {
    emit(state.copyWith(
        bill: state.bill!.copyWith(isApproved: BoughtApproved(e.isApproved))));
  }

  FutureOr<void> updated(
      _Updated e, Emitter<SingleBoughtInvoiceWatcherState> emit) async {
    Either<BoughtNotFormFailure, BoughtNotForm>? failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.bill!.failureOption.isNone()) {
      // failureOrSuccess = state.isEditing
      // ? await _soldRepository.update(state.bill)
      failureOrSuccess = await _boughtRepository.update(state.bill!);
    }

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  // StreamSubscription<Either<SoldNotFormFailure, bool>> _soldStreamSubscription;
  StreamSubscription<Either<BoughtNotFormFailure, List<BoughtNotForm>>>?
      _listBoughtBoughtNotFormStreamSubscription;
  @override
  Stream<SingleBoughtInvoiceWatcherState> mapEventToState(
    SingleBoughtInvoiceWatcherEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.afterSelectBoughtOption.fold(
        () => state,
        (initialBought) => state.copyWith(
          bill: initialBought,
          isEditing: true,
        ),
      );
    }, isApprovedChanged: (e) async* {
      yield state.copyWith(
          bill: state.bill!.copyWith(isApproved: BoughtApproved(e.isApproved)));
    }, updated: (e) async* {
      Either<BoughtNotFormFailure, BoughtNotForm>? failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.bill!.failureOption.isNone()) {
        // failureOrSuccess = state.isEditing
        // ? await _soldRepository.update(state.bill)
        failureOrSuccess = await _boughtRepository.update(state.bill!);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
