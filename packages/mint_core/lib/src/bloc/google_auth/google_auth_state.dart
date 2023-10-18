part of 'google_auth_bloc.dart';

enum GoogleAuthFailure { base, wrongUserType }

@immutable
abstract class GoogleAuthState {}

class GoogleAuthInitial extends GoogleAuthState {}

class GoogleAuthSignInSuccess extends GoogleAuthState {}

class GoogleAuthSignInFailure extends GoogleAuthState {
  GoogleAuthSignInFailure(this.failure);

  final GoogleAuthFailure failure;
}
