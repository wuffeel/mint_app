import 'package:injectable/injectable.dart';

import '../service/abstract/google_auth_service.dart';

@injectable
class SignInWithGoogleUseCase {
  SignInWithGoogleUseCase(this._service);

  final GoogleAuthService _service;

  Future<void> call() => _service.signInWithGoogle();
}
