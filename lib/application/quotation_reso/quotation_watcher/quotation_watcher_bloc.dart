import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/i_quotation_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';

part 'quotation_watcher_event.dart';
part 'quotation_watcher_state.dart';
part 'quotation_watcher_bloc.freezed.dart';

@injectable
class QuotationWatcherBloc
    extends Bloc<QuotationWatcherEvent, QuotationWatcherState> {
  final IQuotationRepository _quotationRepository;
  QuotationWatcherBloc(this._quotationRepository)
      : super(const QuotationWatcherState.initial()) {
    on<_Started>(_started);
    on<_QuotationsReceived>(_quotationsReceived);
    on<_ChangeSelected>(_changeSelected);
  }
  StreamSubscription<Either<QuotationFailure, List<Quotation>>>?
      _quotationStreamSubscription;
  FutureOr<void> _started(
      _Started e, Emitter<QuotationWatcherState> emit) async {
    emit(const QuotationWatcherState.loadInProgress());
    await _quotationStreamSubscription?.cancel();
    _quotationStreamSubscription = _quotationRepository
        .watchAll()
        .asStream()
        .listen(
          (failureOrquotation) =>
              add(QuotationWatcherEvent.quotationsReceived(failureOrquotation)),
        );
  }

  FutureOr<void> _quotationsReceived(
      _QuotationsReceived e, Emitter<QuotationWatcherState> emit) async {
    return e.failureOrQuotation.fold(
      (f) => emit(QuotationWatcherState.loadFailure(f)),
      (quotations) => emit(QuotationWatcherState.loadSuccess(quotations)),
    );
  }

  FutureOr<void> _changeSelected(
      _ChangeSelected e, Emitter<QuotationWatcherState> emit) async {
    final List<Quotation> list = e.items
        .map((d) => d.id == e.entry.id
            ? d.copyWith(isSelected: QuotationSelected(e.value))
            : d.copyWith())
        .toList();

    emit(QuotationWatcherState.loadSuccess(list));
  }
/* 
  @override
  Stream<QuotationWatcherState> mapEventToState(
    QuotationWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(started: (e) async* {
      yield const QuotationWatcherState.loadInProgress();
      await _quotationStreamSubscription?.cancel();
      _quotationStreamSubscription = _quotationRepository
          .watchAll()
          .asStream()
          .listen(
            (failureOrquotation) => add(
                QuotationWatcherEvent.quotationsReceived(failureOrquotation)),
          );
    }, quotationsReceived: (e) async* {
      yield e.failureOrQuotation.fold(
        (f) => QuotationWatcherState.loadFailure(f),
        (quotations) => QuotationWatcherState.loadSuccess(quotations),
      );
    }, changeSelected: (e) async* {
      final List<Quotation> list = e.items
          .map((d) => d.id == e.entry.id
              ? d.copyWith(isSelected: QuotationSelected(e.value))
              : d.copyWith())
          .toList();

      yield QuotationWatcherState.loadSuccess(list);
    });
  } */
}
