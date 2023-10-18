import 'package:injectable/injectable.dart';

import '../../../data/repository/abstract/google_auth_repository.dart';
import '../abstract/google_auth_service.dart';

@Injectable(as: GoogleAuthService)
class FirebaseGoogleAuthService extends GoogleAuthService {
  FirebaseGoogleAuthService(this._googleAuthRepository);

  final GoogleAuthRepository _googleAuthRepository;

  @override
  Future<void> signInWithGoogle() {
    return _googleAuthRepository.signInWithGoogle();
  }
}
