part of 'quotation_bloc.dart';

@freezed
abstract class QuotationState with _$QuotationState {
  const factory QuotationState({
    @required Quotation? quotation,
    @required bool? showErrorMessages,
    @required bool? isEditing,
    @required bool? isSaving,
    @required bool? isSelected,
    @required
        Option<Either<QuotationFailure, Quotation>>? saveFailureOrSuccessOption,
  }) = _QuotationState;

  factory QuotationState.initial() => QuotationState(
        quotation: Quotation.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        isSelected: false,
        saveFailureOrSuccessOption: none(),
      );
}
