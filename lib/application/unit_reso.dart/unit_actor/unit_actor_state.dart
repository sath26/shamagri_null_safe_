part of 'unit_actor_bloc.dart';

@freezed
abstract class UnitActorState with _$UnitActorState {
  const factory UnitActorState.initial() = _Initial;
  const factory UnitActorState.actionInProgress() = _ActionInProgress;
  const factory UnitActorState.deleteFailure(UnitFailure unitFailure) =
      _DeleteFailure;
  const factory UnitActorState.deleteSuccess() = _DeleteSuccess;
}
