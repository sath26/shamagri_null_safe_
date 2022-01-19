part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loadInProgress() = _LoadInProgress;
  const factory ProfileState.loadSuccess(List<User> users) = _LoadSuccess;
  const factory ProfileState.loadFailure(UserFailure userFailure) =
      _LoadFailure;
}
