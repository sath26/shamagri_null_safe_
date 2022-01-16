import 'dart:async';

import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:mobile_shamagri_bloc/infrastructure/auth/model/models.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) async* {
      final userOption = await _authFacade.getSignedInUser();
      yield userOption.fold(
        () => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated(),
      );
    });
    on<SignedOut>((event, emit) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
