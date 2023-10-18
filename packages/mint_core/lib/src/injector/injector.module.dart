//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i16;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i12;
import '../../mint_bloc.dart' as _i76;
import '../../mint_core.dart' as _i17;
import '../../mint_module.dart' as _i33;
import '../assembly/entity/chat_user_data_from_map.dart' as _i22;
import '../assembly/entity/notification_model_from_dto.dart' as _i21;
import '../assembly/entity/specialist_model_from_dto.dart' as _i79;
import '../assembly/entity/specialist_work_info_from_dto.dart' as _i27;
import '../assembly/entity/user_model_from_dto.dart' as _i78;
import '../assembly/entity/user_presence_from_dto.dart' as _i15;
import '../assembly/factory.dart' as _i23;
import '../assembly/model/specialist_model_to_dto.dart' as _i26;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i18;
import '../assembly/model/user_model_to_dto.dart' as _i30;
import '../assembly/modified_user_dto_to_map.dart' as _i31;
import '../bloc/app_notifications/app_notifications_bloc.dart' as _i73;
import '../bloc/chat/chat_bloc.dart' as _i74;
import '../bloc/chat_room/chat_room_bloc.dart' as _i75;
import '../bloc/chat_typing/chat_typing_bloc.dart' as _i77;
import '../bloc/google_auth/google_auth_bloc.dart' as _i91;
import '../bloc/presence_message/presence_message_bloc.dart' as _i61;
import '../bloc/unread_messages/unread_messages_bloc.dart' as _i69;
import '../data/model/notification_model_dto/notification_model_dto.dart'
    as _i20;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i24;
import '../data/model/specialist_work_info_dto/specialist_work_info_dto.dart'
    as _i40;
import '../data/model/user_model_dto/user_model_dto.dart' as _i28;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i14;
import '../data/repository/abstract/app_notification_repository.dart' as _i3;
import '../data/repository/abstract/booking_repository_base.dart' as _i5;
import '../data/repository/abstract/chat_repository.dart' as _i7;
import '../data/repository/abstract/file_repository.dart' as _i80;
import '../data/repository/abstract/firebase_initializer.dart' as _i41;
import '../data/repository/abstract/google_auth_repository.dart' as _i48;
import '../data/repository/abstract/storage_repository.dart' as _i67;
import '../data/repository/abstract/user_repository.dart' as _i71;
import '../data/repository/file_repository_native.dart' as _i81;
import '../data/repository/file_repository_web.dart' as _i82;
import '../data/repository/firebase/firebase_app_notification_repository.dart'
    as _i84;
import '../data/repository/firebase/firebase_booking_repository_base.dart'
    as _i85;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i86;
import '../data/repository/firebase/firebase_google_auth_repository.dart'
    as _i49;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i42;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i43;
import '../data/repository/firebase/firebase_user_repository.dart' as _i44;
import '../domain/controller/user_controller.dart' as _i70;
import '../domain/entity/notification_model/notification_model.dart' as _i19;
import '../domain/entity/specialist_model/specialist_model.dart' as _i25;
import '../domain/entity/specialist_work_info/specialist_work_info.dart'
    as _i39;
import '../domain/entity/user_model/user_model.dart' as _i29;
import '../domain/entity/user_presence/user_presence.dart' as _i13;
import '../domain/service/abstract/app_notification_service.dart' as _i4;
import '../domain/service/abstract/booking_service_base.dart' as _i6;
import '../domain/service/abstract/chat_service.dart' as _i8;
import '../domain/service/abstract/file_service.dart' as _i36;
import '../domain/service/abstract/google_auth_service.dart' as _i50;
import '../domain/service/abstract/storage_service.dart' as _i68;
import '../domain/service/abstract/user_service.dart' as _i72;
import '../domain/service/file_service_impl.dart' as _i83;
import '../domain/service/firebase/firebase_app_notification_service.dart'
    as _i37;
import '../domain/service/firebase/firebase_booking_service_base.dart' as _i38;
import '../domain/service/firebase/firebase_chat_service.dart' as _i87;
import '../domain/service/firebase/firebase_google_auth_service.dart' as _i51;
import '../domain/service/firebase/firebase_storage_service.dart' as _i88;
import '../domain/service/firebase/firebase_user_service.dart' as _i89;
import '../domain/use_case/clear_app_notifications_use_case.dart' as _i9;
import '../domain/use_case/create_chat_room_use_case.dart' as _i10;
import '../domain/use_case/delete_message_use_case.dart' as _i11;
import '../domain/use_case/fetch_chat_room_list_use_case.dart' as _i32;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i34;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i35;
import '../domain/use_case/get_app_notification_stream_use_case.dart' as _i45;
import '../domain/use_case/get_excluded_days_by_id.dart' as _i46;
import '../domain/use_case/get_messages_use_case.dart' as _i47;
import '../domain/use_case/get_user_presence_use_case.dart' as _i90;
import '../domain/use_case/initialize_chat_typing_presence_use_case.dart'
    as _i52;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i92;
import '../domain/use_case/load_file_use_case.dart' as _i53;
import '../domain/use_case/mark_app_notification_as_read_use_case.dart' as _i54;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i55;
import '../domain/use_case/on_chat_typing_end_use_case.dart' as _i56;
import '../domain/use_case/on_chat_typing_start_use_case.dart' as _i57;
import '../domain/use_case/open_file_use_case.dart' as _i58;
import '../domain/use_case/pick_file_use_case.dart' as _i59;
import '../domain/use_case/pick_image_use_case.dart' as _i60;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i62;
import '../domain/use_case/save_audio_use_case.dart' as _i63;
import '../domain/use_case/send_message_use_case.dart' as _i64;
import '../domain/use_case/sign_in_with_google_use_case.dart' as _i65;
import '../domain/use_case/specialist_work_info_fetch_use_case.dart' as _i66;
import '../module/mint_module.dart' as _i93;

const String _native = 'native';
const String _web = 'web';

class MintCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final mintModule = _$MintModule();
    gh.factory<_i3.AppNotificationRepository>(
        () => mintModule.appNotificationRepository);
    gh.factory<_i4.AppNotificationService>(
        () => mintModule.appNotificationService);
    gh.factory<_i5.BookingRepositoryBase>(
        () => mintModule.bookingRepositoryBase);
    gh.factory<_i6.BookingServiceBase>(() => mintModule.bookingServiceBase);
    gh.factory<_i7.ChatRepository>(() => mintModule.chatRepository);
    gh.factory<_i8.ChatService>(() => mintModule.chatService);
    gh.factory<_i9.ClearAppNotificationsUseCase>(() =>
        _i9.ClearAppNotificationsUseCase(gh<_i4.AppNotificationService>()));
    gh.factory<_i10.CreateChatRoomUseCase>(
        () => _i10.CreateChatRoomUseCase(gh<_i8.ChatService>()));
    gh.factory<_i11.DeleteMessageUseCase>(
        () => _i11.DeleteMessageUseCase(gh<_i8.ChatService>()));
    gh.factory<_i12.Factory<_i13.UserPresence, _i14.UserPresenceDto>>(
        () => _i15.UserPresenceFromDto());
    gh.factory<_i12.Factory<_i16.User, _i17.UserModelDto>>(
        () => _i18.UserModelDtoToChatUserMap());
    gh.factory<
            _i12.Factory<_i19.NotificationModel?, _i20.NotificationModelDto>>(
        () => _i21.NotificationModelFromDto());
    gh.factory<_i12.Factory<_i16.User, Map<String, dynamic>>>(
        () => _i22.ChatUserDataFromMap());
    gh.factory<_i23.Factory<_i24.SpecialistModelDto, _i25.SpecialistModel>>(
        () => _i26.SpecialistModelToDto());
    gh.factory<
            _i12.Factory<_i17.SpecialistWorkInfo, _i17.SpecialistWorkInfoDto>>(
        () => _i27.SpecialistWorkInfoFromDto());
    gh.factory<_i23.Factory<_i28.UserModelDto, _i29.UserModel>>(
      () => _i30.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i23.Factory<_i28.UserModelDto, _i29.UserModel>>(
      () => _i30.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i12.Factory<Map<String, dynamic>, _i17.UserModelDto>>(
        () => _i31.ModifiedUserDtoToMap());
    gh.factory<_i32.FetchChatRoomListUseCase>(
        () => _i32.FetchChatRoomListUseCase(gh<_i33.ChatService>()));
    gh.factory<_i34.FetchChatRoomUseCase>(
        () => _i34.FetchChatRoomUseCase(gh<_i8.ChatService>()));
    gh.factory<_i35.FetchUnreadMessagesCountUseCase>(
        () => _i35.FetchUnreadMessagesCountUseCase(gh<_i8.ChatService>()));
    gh.factory<_i36.FileService>(() => mintModule.fileService);
    gh.factory<_i37.FirebaseAppNotificationService>(() =>
        _i37.FirebaseAppNotificationService(
          gh<_i3.AppNotificationRepository>(),
          gh<
              _i12
              .Factory<_i19.NotificationModel?, _i20.NotificationModelDto>>(),
        ));
    gh.factory<_i38.FirebaseBookingServiceBase>(() =>
        _i38.FirebaseBookingServiceBase(
          gh<_i5.BookingRepositoryBase>(),
          gh<
              _i23
              .Factory<_i39.SpecialistWorkInfo, _i40.SpecialistWorkInfoDto>>(),
        ));
    gh.lazySingleton<_i41.FirebaseInitializer>(
      () => _i42.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i41.FirebaseInitializer>(
      () => _i42.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i43.FirebaseStorageRepository>(
        () => _i43.FirebaseStorageRepository(gh<_i41.FirebaseInitializer>()));
    gh.lazySingleton<_i44.FirebaseUserRepository>(
      () => _i44.FirebaseWebUserRepository(
        gh<_i33.FirebaseInitializer>(),
        gh<_i12.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.lazySingleton<_i44.FirebaseUserRepository>(
      () => _i44.FirebaseNativeUserRepository(
        gh<_i33.FirebaseInitializer>(),
        gh<_i12.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i45.GetAppNotificationStreamUseCase>(() =>
        _i45.GetAppNotificationStreamUseCase(gh<_i4.AppNotificationService>()));
    gh.factory<_i46.GetExcludedDaysByIdUseCase>(
        () => _i46.GetExcludedDaysByIdUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i47.GetMessagesUseCase>(
        () => _i47.GetMessagesUseCase(gh<_i8.ChatService>()));
    gh.lazySingleton<_i48.GoogleAuthRepository>(
      () =>
          _i49.FirebaseGoogleAuthRepositoryWeb(gh<_i33.FirebaseInitializer>()),
      registerFor: {_web},
    );
    gh.lazySingleton<_i48.GoogleAuthRepository>(
      () => _i49.FirebaseGoogleAuthRepositoryNative(
          gh<_i33.FirebaseInitializer>()),
      registerFor: {_native},
    );
    gh.factory<_i50.GoogleAuthService>(
        () => _i51.FirebaseGoogleAuthService(gh<_i48.GoogleAuthRepository>()));
    gh.factory<_i52.InitializeChatTypingPresenceUseCase>(
        () => _i52.InitializeChatTypingPresenceUseCase(gh<_i8.ChatService>()));
    gh.factory<_i53.LoadFileUseCase>(
        () => _i53.LoadFileUseCase(gh<_i36.FileService>()));
    gh.factory<_i54.MarkAppNotificationAsReadUseCase>(() =>
        _i54.MarkAppNotificationAsReadUseCase(
            gh<_i4.AppNotificationService>()));
    gh.factory<_i55.MessageMarkAsReadUseCase>(
        () => _i55.MessageMarkAsReadUseCase(gh<_i8.ChatService>()));
    gh.factory<_i56.OnChatTypingEndUseCase>(
        () => _i56.OnChatTypingEndUseCase(gh<_i8.ChatService>()));
    gh.factory<_i57.OnChatTypingStartUseCase>(
        () => _i57.OnChatTypingStartUseCase(gh<_i8.ChatService>()));
    gh.factory<_i58.OpenFileUseCase>(
        () => _i58.OpenFileUseCase(gh<_i36.FileService>()));
    gh.factory<_i59.PickFileUseCase>(
        () => _i59.PickFileUseCase(gh<_i36.FileService>()));
    gh.factory<_i60.PickImageUseCase>(
        () => _i60.PickImageUseCase(gh<_i36.FileService>()));
    gh.factory<_i61.PresenceMessageBloc>(
        () => _i61.PresenceMessageBloc(gh<_i55.MessageMarkAsReadUseCase>()));
    gh.factory<_i62.PreviewDataFetchedUseCase>(
        () => _i62.PreviewDataFetchedUseCase(gh<_i8.ChatService>()));
    gh.factory<_i63.SaveAudioUseCase>(
        () => _i63.SaveAudioUseCase(gh<_i36.FileService>()));
    gh.factory<_i64.SendMessageUseCase>(
        () => _i64.SendMessageUseCase(gh<_i8.ChatService>()));
    gh.factory<_i65.SignInWithGoogleUseCase>(
        () => _i65.SignInWithGoogleUseCase(gh<_i50.GoogleAuthService>()));
    gh.factory<_i66.SpecialistWorkInfoFetchUseCase>(() =>
        _i66.SpecialistWorkInfoFetchUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i67.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i68.StorageService>(() => mintModule.storageService);
    gh.factory<_i69.UnreadMessagesBloc>(() =>
        _i69.UnreadMessagesBloc(gh<_i33.FetchUnreadMessagesCountUseCase>()));
    gh.lazySingleton<_i70.UserController<_i29.UserModel?>>(
      () => _i70.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i70.UserController<_i29.PatientUser?>>(
      () => _i70.UserControllerNative(),
      registerFor: {_native},
    );
    gh.factory<_i71.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i72.UserService>(() => mintModule.userService);
    gh.factory<_i73.AppNotificationsBloc<_i17.UserModel?>>(
        () => _i73.AppNotificationsBlocBase(
              gh<_i45.GetAppNotificationStreamUseCase>(),
              gh<_i34.FetchChatRoomUseCase>(),
              gh<_i54.MarkAppNotificationAsReadUseCase>(),
              gh<_i9.ClearAppNotificationsUseCase>(),
              gh<_i70.UserController<_i17.UserModel?>>(),
            ));
    gh.factory<_i74.ChatBloc<_i17.UserModel?>>(() => _i74.ChatBlocBasic(
          gh<_i70.UserController<_i17.UserModel?>>(),
          gh<_i47.GetMessagesUseCase>(),
          gh<_i10.CreateChatRoomUseCase>(),
          gh<_i64.SendMessageUseCase>(),
          gh<_i11.DeleteMessageUseCase>(),
          gh<_i62.PreviewDataFetchedUseCase>(),
          gh<_i60.PickImageUseCase>(),
          gh<_i59.PickFileUseCase>(),
          gh<_i33.LoadFileUseCase>(),
          gh<_i58.OpenFileUseCase>(),
          gh<_i63.SaveAudioUseCase>(),
        ));
    gh.factory<_i74.ChatBlocPatient>(
      () => _i74.ChatBlocPatient(
        gh<_i70.UserController<_i17.PatientUser?>>(),
        gh<_i47.GetMessagesUseCase>(),
        gh<_i10.CreateChatRoomUseCase>(),
        gh<_i64.SendMessageUseCase>(),
        gh<_i11.DeleteMessageUseCase>(),
        gh<_i62.PreviewDataFetchedUseCase>(),
        gh<_i60.PickImageUseCase>(),
        gh<_i59.PickFileUseCase>(),
        gh<_i33.LoadFileUseCase>(),
        gh<_i58.OpenFileUseCase>(),
        gh<_i63.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i75.ChatRoomBloc<_i17.UserModel?>>(() => _i75.ChatRoomBlocBasic(
          gh<_i32.FetchChatRoomListUseCase>(),
          gh<_i76.UserController<_i17.UserModel?>>(),
        ));
    gh.factory<_i75.ChatRoomBlocPatient>(
      () => _i75.ChatRoomBlocPatient(
        gh<_i32.FetchChatRoomListUseCase>(),
        gh<_i76.UserController<_i17.PatientUser?>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i77.ChatTypingBloc>(() => _i77.ChatTypingBloc(
          gh<_i52.InitializeChatTypingPresenceUseCase>(),
          gh<_i57.OnChatTypingStartUseCase>(),
          gh<_i56.OnChatTypingEndUseCase>(),
        ));
    gh.factory<_i23.Factory<_i2.Future<_i29.UserModel>, _i28.UserModelDto>>(
        () => _i78.UserModelFromDto(gh<_i68.StorageService>()));
    gh.factory<
            _i23.Factory<_i2.Future<_i25.SpecialistModel>,
                _i24.SpecialistModelDto>>(
        () => _i79.SpecialistModelFromDto(gh<_i68.StorageService>()));
    gh.lazySingleton<_i80.FileRepository>(
      () => _i81.FileRepositoryNative(gh<_i33.FirebaseInitializer>()),
      registerFor: {_native},
    );
    gh.lazySingleton<_i80.FileRepository>(
      () => _i82.FileRepositoryWeb(gh<_i33.FirebaseInitializer>()),
      registerFor: {_web},
    );
    gh.factory<_i83.FileServiceImpl>(
        () => _i83.FileServiceImpl(gh<_i80.FileRepository>()));
    gh.lazySingleton<_i84.FirebaseAppNotificationRepository>(() =>
        _i84.FirebaseAppNotificationRepository(gh<_i33.FirebaseInitializer>()));
    gh.lazySingleton<_i85.FirebaseBookingRepositoryBase>(() =>
        _i85.FirebaseBookingRepositoryBase(gh<_i33.FirebaseInitializer>()));
    gh.lazySingleton<_i86.FirebaseChatRepository>(
        () => _i86.FirebaseChatRepository(
              gh<_i33.FirebaseInitializer>(),
              gh<_i12.Factory<_i16.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i87.FirebaseChatService>(() => _i87.FirebaseChatService(
          gh<_i7.ChatRepository>(),
          gh<_i33.StorageService>(),
          gh<_i36.FileService>(),
        ));
    gh.factory<_i88.FirebaseStorageService>(
        () => _i88.FirebaseStorageService(gh<_i67.StorageRepository>()));
    gh.factory<_i89.FirebaseUserService>(() => _i89.FirebaseUserService(
          gh<_i33.UserRepository>(),
          gh<_i33.StorageService>(),
          gh<_i12.Factory<_i2.Future<_i17.UserModel>, _i17.UserModelDto>>(),
          gh<_i12.Factory<_i17.UserModelDto, _i17.UserModel>>(),
          gh<_i12.Factory<_i17.UserPresence, _i14.UserPresenceDto>>(),
        ));
    gh.factory<_i90.GetUserPresenceUseCase>(
        () => _i90.GetUserPresenceUseCase(gh<_i72.UserService>()));
    gh.factory<_i91.GoogleAuthBloc>(
        () => _i91.GoogleAuthBloc(gh<_i65.SignInWithGoogleUseCase>()));
    gh.factory<_i92.InitializeUserPresenceUseCase>(
        () => _i92.InitializeUserPresenceUseCase(gh<_i72.UserService>()));
  }
}

class _$MintModule extends _i93.MintModule {}
