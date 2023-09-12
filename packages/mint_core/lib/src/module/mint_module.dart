import 'package:injectable/injectable.dart';

import '../../src/data/repository/firebase/firebase_storage_repository.dart';
import '../../src/data/repository/firebase/firebase_user_repository.dart';
import '../../src/domain/service/firebase/firebase_storage_service.dart';
import '../../src/domain/service/firebase/firebase_user_service.dart';
import '../data/repository/abstract/storage_repository.dart';
import '../data/repository/abstract/user_repository.dart';
import '../domain/service/abstract/storage_service.dart';
import '../domain/service/abstract/user_service.dart';
import '../injector/injector.dart';

@module
abstract class MintModule {
  StorageRepository get storageRepository => getIt<FirebaseStorageRepository>();

  UserRepository get userRepository => getIt<FirebaseUserRepository>();

  StorageService get storageService => getIt<FirebaseStorageService>();

  UserService get userService => getIt<FirebaseUserService>();
}
