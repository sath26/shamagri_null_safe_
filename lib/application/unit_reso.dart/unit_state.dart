part of 'unit_bloc.dart';

@freezed
abstract class UnitState with _$UnitState {
  const factory UnitState({
    @required Measuremnt unit,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required
        Option<Either<UnitFailure, Measuremnt>> saveFailureOrSuccessOption,
  }) = _UnitState;

  factory UnitState.initial() => UnitState(
        unit: Measuremnt.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
