import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';

part 'single_invoice_watcher_event.dart';
part 'single_invoice_watcher_state.dart';
part 'single_invoice_watcher_bloc.freezed.dart';

@injectable
class SingleInvoiceWatcherBloc
    extends Bloc<SingleInvoiceWatcherEvent, SingleInvoiceWatcherState> {
  final ISoldRepository _soldRepository;

  SingleInvoiceWatcherBloc(this._soldRepository)
      : super(SingleInvoiceWatcherState.initial()) {
    on<_Initialized>(_initialized);
  }
  FutureOr<void> _initialized(
      _Initialized e, Emitter<SingleInvoiceWatcherState> emit) async {
    e.afterSelectSoldOption!.fold(
      () => emit(state),
      (initialSold) => emit(state.copyWith(
        bill: initialSold,
        isEditing: true,
      )),
    );
  }

  // StreamSubscription<Either<SoldNotFormFailure, bool>> _soldStreamSubscription;
  /* @override
  Stream<SingleInvoiceWatcherState> mapEventToState(
    SingleInvoiceWatcherEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.afterSelectSoldOption!.fold(
          () => state,
          (initialSold) => state.copyWith(
            bill: initialSold,
            isEditing: true,
          ),
        );
      },
    );
  } */
}
