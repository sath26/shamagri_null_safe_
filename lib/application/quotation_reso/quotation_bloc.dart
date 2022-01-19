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
  QuotationBloc(this._quotationRepository) : super(QuotationState.initial());

  @override
  Stream<QuotationState> mapEventToState(
    QuotationEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialQuotationOption.fold(
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
              state.quotation.copyWith(title: QuotationTitle(e.titleStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      rateChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation.copyWith(rate: QuotationRate(e.rateStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      unitChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation
              .copyWith(measuremntUnit: QuotationUnit(e.unitStr)),
          isEditing: false,
          saveFailureOrSuccessOption: none(),
        );
      },
      quantityChanged: (e) async* {
        yield state.copyWith(
          quotation: state.quotation
              .copyWith(quantity: QuotationQuantity(e.quantityStr)),
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
          quotation: state.quotation
              .copyWith(isSelected: QuotationSelected(e.isSelected)),
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

        if (state.quotation.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _quotationRepository.update(state.quotation)
              : await _quotationRepository.create(state.quotation);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
