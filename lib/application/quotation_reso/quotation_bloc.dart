import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/i_quotation_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';

part 'quotation_event.dart';
part 'quotation_state.dart';
part 'quotation_bloc.freezed.dart';

@injectable
class QuotationBloc extends Bloc<QuotationEvent, QuotationState> {
  final IQuotationRepository _quotationRepository;
  QuotationBloc(this._quotationRepository) : super(QuotationState.initial()) {
    on<_Initialized>(_initialized);
    on<_TitleChanged>(_titleChanged);
    on<_RateChanged>(_rateChanged);
    // on<_RateChanged>();
    on<_UnitChanged>(_unitChanged);
    on<_QuantityChanged>(_quantityChanged);
    on<_IsSelectedOrNot>(_isSelectedOrNot);
    on<_Saved>(_saved);
    // saved
  }
  FutureOr<void> _initialized(
      _Initialized e, Emitter<QuotationState> emit) async {
    return emit(e.initialQuotationOption!.fold(
      () => state,
      (initialQuotation) => state.copyWith(
        quotation: initialQuotation,
        isEditing: true,
      ),
    ));
  }

  FutureOr<void> _titleChanged(
      _TitleChanged e, Emitter<QuotationState> emit) async {
    return emit(
      state.copyWith(
          quotation:
              state.quotation!.copyWith(title: QuotationTitle(e.titleStr!)),
          saveFailureOrSuccessOption: none()),
    );
  }

  FutureOr<void> _rateChanged(
      _RateChanged e, Emitter<QuotationState> emit) async {
    return emit(state.copyWith(
      quotation: state.quotation!.copyWith(rate: QuotationRate(e.rateStr!)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _unitChanged(
      _UnitChanged e, Emitter<QuotationState> emit) async {
    return emit(state.copyWith(
      quotation:
          state.quotation!.copyWith(measuremntUnit: QuotationUnit(e.unitStr!)),
      isEditing: false,
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _quantityChanged(
      _QuantityChanged e, Emitter<QuotationState> emit) async {
    return emit(state.copyWith(
      quotation: state.quotation!
          .copyWith(quantity: QuotationQuantity(e.quantityStr!)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _isSelectedOrNot(
      _IsSelectedOrNot e, Emitter<QuotationState> emit) async {
    return /* state.copyWith(
          quotation: e.selectedQuotationOption.fold(
              () => state,
              (selectedQuotation) => state.copyWith(
                  quotation: state.selectedQuotaion
                      .copyWith(isSelected: e.isSelected))),
        ); */
        emit(state.copyWith(
      quotation: state.quotation!
          .copyWith(isSelected: QuotationSelected(e.isSelected!)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _saved(_Saved e, Emitter<QuotationState> emit) async {
    Either<QuotationFailure, Quotation>? failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.quotation!.failureOption.isNone()) {
      failureOrSuccess = state.isEditing!
          ? await _quotationRepository.update(state.quotation!)
          : await _quotationRepository.create(state.quotation!);
    }

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  /* @override
  Stream<QuotationState> mapEventToState(
    QuotationEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialQuotationOption!.fold(
          () => state,
          (initialQuotation) => state.copyWith(
            quotation: initialQuotation,
            isEditing: true,
          ),
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          quotation:
              state.quotation!.copyWith(title: QuotationTitle(e.titleStr!)),
          saveFailureOrSuccessOption: none(),
        );
      },
      rateChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation!.copyWith(rate: QuotationRate(e.rateStr!)),
          saveFailureOrSuccessOption: none(),
        );
      },
      unitChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation!
              .copyWith(measuremntUnit: QuotationUnit(e.unitStr!)),
          isEditing: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      quantityChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation!
              .copyWith(quantity: QuotationQuantity(e.quantityStr!)),
          saveFailureOrSuccessOption: none(),
        );
      },
      isSelectedOrNot: (e) async* {
        yield /* state.copyWith(
          quotation: e.selectedQuotationOption.fold(
              () => state,
              (selectedQuotation) => state.copyWith(
                  quotation: state.selectedQuotaion
                      .copyWith(isSelected: e.isSelected))),
        ); */
            state.copyWith(
          quotation: state.quotation!
              .copyWith(isSelected: QuotationSelected(e.isSelected!)),
          saveFailureOrSuccessOption: none(),
        );
        // yield state.copyWith(isSelected: e.isSelected);
      },
      saved: (e) async* {
        Either<QuotationFailure, Quotation>? failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.quotation!.failureOption.isNone()) {
          failureOrSuccess = state.isEditing!
              ? await _quotationRepository.update(state.quotation!)
              : await _quotationRepository.create(state.quotation!);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  } */
}
