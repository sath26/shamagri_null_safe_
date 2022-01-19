part of 'unit_watcher_bloc.dart';

@freezed
abstract class UnitWatcherState
    with _$UnitWatcherState
    implements ItemSourceState<Measuremnt> {
  const factory UnitWatcherState.initial() = _Initial;
  const factory UnitWatcherState.loadInProgress() = _LoadInProgress;
  const factory UnitWatcherState.loadSuccess(List<Measuremnt>? units) =
      _LoadSuccess;
  const factory UnitWatcherState.loadFailure(UnitFailure? unitFailure) =
      _LoadFailure;
}
