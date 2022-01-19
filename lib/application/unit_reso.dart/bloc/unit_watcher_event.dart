part of 'unit_watcher_bloc.dart';

@freezed
abstract class UnitWatcherEvent with _$UnitWatcherEvent {
  const factory UnitWatcherEvent.started() = _Started;
  const factory UnitWatcherEvent.unitsReceived(
    Either<UnitFailure, List<Measuremnt>> failureOrUnit,
  ) = _UnitsReceived;
}
