import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/auth_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/i_user_repository.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  Logger logger = Logger();

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<_$EmailChanged>(_onEmailChanged);
    on<_$PasswordChanged>(_onPasswordChanged);
    on<_$RegisterWithEmailAndPasswordPressed>(
        _onRegisterWithEmailAndPasswordPressed);
    on<_$SignInWithEmailAndPasswordPressed>(
        _onSignInWithEmailAndPasswordPressed);
    on<_$SignInWithGooglePressed>(_onSignInWithGooglePressed);
  }
  FutureOr<void> _onEmailChanged(
      EmailChanged event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.emailStr!),
      authFailureOrSuccessOption: none(),
    ));
    // emit(const AuthState.unauthenticated());
  }

  FutureOr<void> _onPasswordChanged(
      PasswordChanged e, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      password: Password(e.passwordStr!),
      authFailureOrSuccessOption: none(),
    ));
    // emit(const AuthState.unauthenticated());
  }

  FutureOr<void> _onRegisterWithEmailAndPasswordPressed(
      RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailAndPassword,
    );
    // emit(const AuthState.unauthenticated());
  }

  FutureOr<void> _onSignInWithEmailAndPasswordPressed(
      SignInWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );
    // emit(const AuthState.unauthenticated());
  }

  FutureOr<void> _onSignInWithGooglePressed(
      SignInWithGooglePressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
    // emit(const AuthState.unauthenticated());
  }

  /* @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr!),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr!),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  } */

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress!.isValid();
    final isPasswordValid = state.password!.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress!,
        password: state.password!,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
