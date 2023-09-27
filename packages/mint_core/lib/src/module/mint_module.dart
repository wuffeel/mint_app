import 'package:injectable/injectable.dart';

import '../../src/data/repository/firebase/firebase_storage_repository.dart';
import '../../src/data/repository/firebase/firebase_user_repository.dart';
import '../../src/domain/service/firebase/firebase_storage_service.dart';
import '../../src/domain/service/firebase/firebase_user_service.dart';
import '../data/repository/abstract/booking_repository_base.dart';
import '../data/repository/abstract/chat_repository.dart';
import '../data/repository/abstract/storage_repository.dart';
import '../data/repository/abstract/user_repository.dart';
import '../data/repository/firebase/firebase_booking_repository_base.dart';
import '../data/repository/firebase/firebase_chat_repository.dart';
import '../domain/service/abstract/booking_service_base.dart';
import '../domain/service/abstract/chat_service.dart';
import '../domain/service/abstract/file_service.dart';
import '../domain/service/abstract/storage_service.dart';
import '../domain/service/abstract/user_service.dart';
import '../domain/service/file_service_impl.dart';
import '../domain/service/firebase/firebase_booking_service_base.dart';
import '../domain/service/firebase/firebase_chat_service.dart';
import '../injector/injector.dart';

@module
abstract class MintModule {
  StorageRepository get storageRepository => getIt<FirebaseStorageRepository>();

  UserRepository get userRepository => getIt<FirebaseUserRepository>();

  ChatRepository get chatRepository => getIt<FirebaseChatRepository>();

  BookingRepositoryBase get bookingRepositoryBase =>
      getIt<FirebaseBookingRepositoryBase>();

  StorageService get storageService => getIt<FirebaseStorageService>();

  UserService get userService => getIt<FirebaseUserService>();

  ChatService get chatService => getIt<FirebaseChatService>();

  FileService get fileService => getIt<FileServiceImpl>();

  BookingServiceBase get bookingServiceBase =>
      getIt<FirebaseBookingServiceBase>();
}
