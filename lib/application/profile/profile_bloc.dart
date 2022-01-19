import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/i_user_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
// import 'package:shamagri_latest_flutter_version/presentation/profile/model/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserRepository _userRepository;
  ProfileBloc(this._userRepository) : super(const ProfileState.initial());
  StreamSubscription<Either<UserFailure, List<User>>>? _userStreamSubscription;
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      started: (e) async* {
        yield const ProfileState.loadInProgress();
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _userRepository.watchAll().asStream().listen(
              (failureOrUser) => add(ProfileEvent.usersReceived(failureOrUser)),
            );
      },
      usersReceived: (e) async* {
        yield e.failureOrUser.fold(
          (f) => ProfileState.loadFailure(f),
          (users) => ProfileState.loadSuccess(users),
        );
      },
    );
  }
}
