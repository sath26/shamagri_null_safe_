import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
// import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
//import 'package:shamagri_latest_flutter_version/infrastructure/auth/model/models.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  Logger logger = Logger();

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<_$AuthCheckRequested>(_onAuthCheckRequested);
    on<_$SignedOut>(_onSignedOut);
  }
  FutureOr<void> _onAuthCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedInUser();
    logger.i("userOption" + userOption.toString());
    // emit(const AuthState.unauthenticated());
    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  FutureOr<void> _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }

  /* FutureOr<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async* {
    emit(AuthState.initial());
    addError(Exception('increment error!'), StackTrace.current);
    yield* event.map(
      authCheckRequested: (e) async* {
        logger.i('called');
        final userOption = await _authFacade.getSignedInUser();
        userOption.fold(
          () => emit(const AuthState.unauthenticated()),
          (_) => emit(const AuthState.authenticated()),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        emit(const AuthState.unauthenticated());
      },
    );
  } */
}
