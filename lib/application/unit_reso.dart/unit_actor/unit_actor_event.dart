part of 'unit_actor_bloc.dart';

@freezed
abstract class UnitActorEvent with _$UnitActorEvent {
  const factory UnitActorEvent.deleted(Measuremnt unit) = _Deleted;
}
