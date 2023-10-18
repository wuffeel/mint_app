import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../mint_core.dart';
import '../../domain/use_case/sign_in_with_google_use_case.dart';

part 'google_auth_event.dart';

part 'google_auth_state.dart';

@injectable
class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  GoogleAuthBloc(this._signInWithGoogleUseCase) : super(GoogleAuthInitial()) {
    on<GoogleAuthSignInRequested>(_onSignInRequested);
  }

  final SignInWithGoogleUseCase _signInWithGoogleUseCase;

  Future<void> _onSignInRequested(
    GoogleAuthSignInRequested event,
    Emitter<GoogleAuthState> emit,
  ) async {
    try {
      await _signInWithGoogleUseCase();
      emit(GoogleAuthSignInSuccess());
    } catch (error) {
      log('GoogleAuthSignInFailure: $error');
      if (error is AuthUserTypeException) {
        emit(GoogleAuthSignInFailure(GoogleAuthFailure.wrongUserType));
      } else {
        emit(GoogleAuthSignInFailure(GoogleAuthFailure.base));
      }
    }
  }
}
