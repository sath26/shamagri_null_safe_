part of 'unit_bloc.dart';

@freezed
abstract class UnitEvent with _$UnitEvent {
  const factory UnitEvent.initialized(Option<Measuremnt>? initialUnitOption) =
      _Initialized;
  const factory UnitEvent.unitChanged(String? bodyStr) = _UnitChanged;
  const factory UnitEvent.saved() = _Saved;
  const factory UnitEvent.showsInputForEdit(
      Option<Measuremnt> item, bool isEditing) = _ShowsInputForEdit;
}
