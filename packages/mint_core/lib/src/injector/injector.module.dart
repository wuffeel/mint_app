//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i15;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i11;
import '../../mint_bloc.dart' as _i70;
import '../../mint_core.dart' as _i17;
import '../../mint_module.dart' as _i32;
import '../assembly/entity/chat_user_data_from_map.dart' as _i16;
import '../assembly/entity/notification_model_from_dto.dart' as _i26;
import '../assembly/entity/specialist_model_from_dto.dart' as _i72;
import '../assembly/entity/specialist_work_info_from_dto.dart' as _i18;
import '../assembly/entity/user_model_from_dto.dart' as _i71;
import '../assembly/entity/user_presence_from_dto.dart' as _i14;
import '../assembly/factory.dart' as _i19;
import '../assembly/model/specialist_model_to_dto.dart' as _i30;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i23;
import '../assembly/model/user_model_to_dto.dart' as _i22;
import '../assembly/modified_user_dto_to_map.dart' as _i27;
import '../bloc/app_notifications/app_notifications_bloc.dart' as _i67;
import '../bloc/chat/chat_bloc.dart' as _i68;
import '../bloc/chat_room/chat_room_bloc.dart' as _i69;
import '../bloc/presence_message/presence_message_bloc.dart' as _i56;
import '../bloc/unread_messages/unread_messages_bloc.dart' as _i63;
import '../data/model/notification_model_dto/notification_model_dto.dart'
    as _i25;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i28;
import '../data/model/specialist_work_info_dto/specialist_work_info_dto.dart'
    as _i43;
import '../data/model/user_model_dto/user_model_dto.dart' as _i20;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i13;
import '../data/repository/abstract/app_notification_repository.dart' as _i3;
import '../data/repository/abstract/booking_repository_base.dart' as _i5;
import '../data/repository/abstract/chat_repository.dart' as _i7;
import '../data/repository/abstract/file_repository.dart' as _i35;
import '../data/repository/abstract/firebase_initializer.dart' as _i44;
import '../data/repository/abstract/storage_repository.dart' as _i61;
import '../data/repository/abstract/user_repository.dart' as _i65;
import '../data/repository/file_repository_native.dart' as _i36;
import '../data/repository/file_repository_web.dart' as _i37;
import '../data/repository/firebase/firebase_app_notification_repository.dart'
    as _i73;
import '../data/repository/firebase/firebase_booking_repository_base.dart'
    as _i74;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i75;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i45;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i46;
import '../data/repository/firebase/firebase_user_repository.dart' as _i47;
import '../domain/controller/user_controller.dart' as _i64;
import '../domain/entity/notification_model/notification_model.dart' as _i24;
import '../domain/entity/specialist_model/specialist_model.dart' as _i29;
import '../domain/entity/specialist_work_info/specialist_work_info.dart'
    as _i42;
import '../domain/entity/user_model/user_model.dart' as _i21;
import '../domain/entity/user_presence/user_presence.dart' as _i12;
import '../domain/service/abstract/app_notification_service.dart' as _i4;
import '../domain/service/abstract/booking_service_base.dart' as _i6;
import '../domain/service/abstract/chat_service.dart' as _i8;
import '../domain/service/abstract/file_service.dart' as _i38;
import '../domain/service/abstract/storage_service.dart' as _i62;
import '../domain/service/abstract/user_service.dart' as _i66;
import '../domain/service/file_service_impl.dart' as _i39;
import '../domain/service/firebase/firebase_app_notification_service.dart'
    as _i40;
import '../domain/service/firebase/firebase_booking_service_base.dart' as _i41;
import '../domain/service/firebase/firebase_chat_service.dart' as _i76;
import '../domain/service/firebase/firebase_storage_service.dart' as _i77;
import '../domain/service/firebase/firebase_user_service.dart' as _i78;
import '../domain/use_case/create_chat_room_use_case.dart' as _i9;
import '../domain/use_case/delete_message_use_case.dart' as _i10;
import '../domain/use_case/fetch_chat_room_list_use_case.dart' as _i31;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i33;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i34;
import '../domain/use_case/get_app_notification_stream_use_case.dart' as _i48;
import '../domain/use_case/get_excluded_days_by_id.dart' as _i49;
import '../domain/use_case/get_messages_use_case.dart' as _i50;
import '../domain/use_case/get_user_presence_use_case.dart' as _i79;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i80;
import '../domain/use_case/load_file_use_case.dart' as _i51;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i52;
import '../domain/use_case/open_file_use_case.dart' as _i53;
import '../domain/use_case/pick_file_use_case.dart' as _i54;
import '../domain/use_case/pick_image_use_case.dart' as _i55;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i57;
import '../domain/use_case/save_audio_use_case.dart' as _i58;
import '../domain/use_case/send_message_use_case.dart' as _i59;
import '../domain/use_case/specialist_work_info_fetch_use_case.dart' as _i60;
import '../module/mint_module.dart' as _i81;

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
    gh.factory<_i9.CreateChatRoomUseCase>(
        () => _i9.CreateChatRoomUseCase(gh<_i8.ChatService>()));
    gh.factory<_i10.DeleteMessageUseCase>(
        () => _i10.DeleteMessageUseCase(gh<_i8.ChatService>()));
    gh.factory<_i11.Factory<_i12.UserPresence, _i13.UserPresenceDto>>(
        () => _i14.UserPresenceFromDto());
    gh.factory<_i11.Factory<_i15.User, Map<String, dynamic>>>(
        () => _i16.ChatUserDataFromMap());
    gh.factory<
            _i11.Factory<_i17.SpecialistWorkInfo, _i17.SpecialistWorkInfoDto>>(
        () => _i18.SpecialistWorkInfoFromDto());
    gh.factory<_i19.Factory<_i20.UserModelDto, _i21.UserModel>>(
      () => _i22.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i11.Factory<_i15.User, _i17.UserModelDto>>(
        () => _i23.UserModelDtoToChatUserMap());
    gh.factory<
            _i11.Factory<_i24.NotificationModel?, _i25.NotificationModelDto>>(
        () => _i26.NotificationModelFromDto());
    gh.factory<_i11.Factory<Map<String, dynamic>, _i17.UserModelDto>>(
        () => _i27.ModifiedUserDtoToMap());
    gh.factory<_i19.Factory<_i28.SpecialistModelDto, _i29.SpecialistModel>>(
        () => _i30.SpecialistModelToDto());
    gh.factory<_i19.Factory<_i20.UserModelDto, _i21.UserModel>>(
      () => _i22.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i31.FetchChatRoomListUseCase>(
        () => _i31.FetchChatRoomListUseCase(gh<_i32.ChatService>()));
    gh.factory<_i33.FetchChatRoomUseCase>(
        () => _i33.FetchChatRoomUseCase(gh<_i8.ChatService>()));
    gh.factory<_i34.FetchUnreadMessagesCountUseCase>(
        () => _i34.FetchUnreadMessagesCountUseCase(gh<_i8.ChatService>()));
    gh.lazySingleton<_i35.FileRepository>(
      () => _i36.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i35.FileRepository>(
      () => _i37.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i38.FileService>(() => mintModule.fileService);
    gh.factory<_i39.FileServiceImpl>(
        () => _i39.FileServiceImpl(gh<_i35.FileRepository>()));
    gh.factory<_i40.FirebaseAppNotificationService>(() =>
        _i40.FirebaseAppNotificationService(
          gh<_i3.AppNotificationRepository>(),
          gh<
              _i11
              .Factory<_i24.NotificationModel?, _i25.NotificationModelDto>>(),
        ));
    gh.factory<_i41.FirebaseBookingServiceBase>(() =>
        _i41.FirebaseBookingServiceBase(
          gh<_i5.BookingRepositoryBase>(),
          gh<
              _i19
              .Factory<_i42.SpecialistWorkInfo, _i43.SpecialistWorkInfoDto>>(),
        ));
    gh.lazySingleton<_i44.FirebaseInitializer>(
      () => _i45.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i44.FirebaseInitializer>(
      () => _i45.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i46.FirebaseStorageRepository>(
        () => _i46.FirebaseStorageRepository(gh<_i44.FirebaseInitializer>()));
    gh.lazySingleton<_i47.FirebaseUserRepository>(
      () => _i47.FirebaseWebUserRepository(
        gh<_i32.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.lazySingleton<_i47.FirebaseUserRepository>(
      () => _i47.FirebaseNativeUserRepository(
        gh<_i32.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i48.GetAppNotificationStreamUseCase>(() =>
        _i48.GetAppNotificationStreamUseCase(gh<_i4.AppNotificationService>()));
    gh.factory<_i49.GetExcludedDaysByIdUseCase>(
        () => _i49.GetExcludedDaysByIdUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i50.GetMessagesUseCase>(
        () => _i50.GetMessagesUseCase(gh<_i8.ChatService>()));
    gh.factory<_i51.LoadFileUseCase>(
        () => _i51.LoadFileUseCase(gh<_i38.FileService>()));
    gh.factory<_i52.MessageMarkAsReadUseCase>(
        () => _i52.MessageMarkAsReadUseCase(gh<_i8.ChatService>()));
    gh.factory<_i53.OpenFileUseCase>(
        () => _i53.OpenFileUseCase(gh<_i38.FileService>()));
    gh.factory<_i54.PickFileUseCase>(
        () => _i54.PickFileUseCase(gh<_i38.FileService>()));
    gh.factory<_i55.PickImageUseCase>(
        () => _i55.PickImageUseCase(gh<_i38.FileService>()));
    gh.factory<_i56.PresenceMessageBloc>(
        () => _i56.PresenceMessageBloc(gh<_i52.MessageMarkAsReadUseCase>()));
    gh.factory<_i57.PreviewDataFetchedUseCase>(
        () => _i57.PreviewDataFetchedUseCase(gh<_i8.ChatService>()));
    gh.factory<_i58.SaveAudioUseCase>(
        () => _i58.SaveAudioUseCase(gh<_i38.FileService>()));
    gh.factory<_i59.SendMessageUseCase>(
        () => _i59.SendMessageUseCase(gh<_i8.ChatService>()));
    gh.factory<_i60.SpecialistWorkInfoFetchUseCase>(() =>
        _i60.SpecialistWorkInfoFetchUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i61.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i62.StorageService>(() => mintModule.storageService);
    gh.factory<_i63.UnreadMessagesBloc>(() =>
        _i63.UnreadMessagesBloc(gh<_i32.FetchUnreadMessagesCountUseCase>()));
    gh.lazySingleton<_i64.UserController<_i21.UserModel?>>(
      () => _i64.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i64.UserController<_i21.PatientUser?>>(
      () => _i64.UserControllerNative(),
      registerFor: {_native},
    );
    gh.factory<_i65.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i66.UserService>(() => mintModule.userService);
    gh.factory<_i67.AppNotificationsBloc<_i21.UserModel?>>(
        () => _i67.AppNotificationsBlocBase(
              gh<_i48.GetAppNotificationStreamUseCase>(),
              gh<_i33.FetchChatRoomUseCase>(),
              gh<_i64.UserController<_i21.UserModel?>>(),
            ));
    gh.factory<_i68.ChatBloc<_i17.UserModel?>>(() => _i68.ChatBlocBasic(
          gh<_i64.UserController<_i17.UserModel?>>(),
          gh<_i50.GetMessagesUseCase>(),
          gh<_i9.CreateChatRoomUseCase>(),
          gh<_i59.SendMessageUseCase>(),
          gh<_i10.DeleteMessageUseCase>(),
          gh<_i57.PreviewDataFetchedUseCase>(),
          gh<_i55.PickImageUseCase>(),
          gh<_i54.PickFileUseCase>(),
          gh<_i32.LoadFileUseCase>(),
          gh<_i53.OpenFileUseCase>(),
          gh<_i58.SaveAudioUseCase>(),
        ));
    gh.factory<_i68.ChatBlocPatient>(
      () => _i68.ChatBlocPatient(
        gh<_i64.UserController<_i17.PatientUser?>>(),
        gh<_i50.GetMessagesUseCase>(),
        gh<_i9.CreateChatRoomUseCase>(),
        gh<_i59.SendMessageUseCase>(),
        gh<_i10.DeleteMessageUseCase>(),
        gh<_i57.PreviewDataFetchedUseCase>(),
        gh<_i55.PickImageUseCase>(),
        gh<_i54.PickFileUseCase>(),
        gh<_i32.LoadFileUseCase>(),
        gh<_i53.OpenFileUseCase>(),
        gh<_i58.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i69.ChatRoomBloc<_i17.UserModel?>>(() => _i69.ChatRoomBlocBasic(
          gh<_i31.FetchChatRoomListUseCase>(),
          gh<_i70.UserController<_i17.UserModel?>>(),
        ));
    gh.factory<_i69.ChatRoomBlocPatient>(
      () => _i69.ChatRoomBlocPatient(
        gh<_i31.FetchChatRoomListUseCase>(),
        gh<_i70.UserController<_i17.PatientUser?>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i19.Factory<_i2.Future<_i21.UserModel>, _i20.UserModelDto>>(
      () => _i71.UserModelFromDto(gh<_i62.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i19.Factory<_i2.Future<_i21.UserModel>, _i20.UserModelDto>>(
      () => _i71.PatientUserFromDto(gh<_i62.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<
            _i19.Factory<_i2.Future<_i29.SpecialistModel>,
                _i28.SpecialistModelDto>>(
        () => _i72.SpecialistModelFromDto(gh<_i62.StorageService>()));
    gh.lazySingleton<_i73.FirebaseAppNotificationRepository>(() =>
        _i73.FirebaseAppNotificationRepository(gh<_i32.FirebaseInitializer>()));
    gh.lazySingleton<_i74.FirebaseBookingRepositoryBase>(() =>
        _i74.FirebaseBookingRepositoryBase(gh<_i32.FirebaseInitializer>()));
    gh.lazySingleton<_i75.FirebaseChatRepository>(
        () => _i75.FirebaseChatRepository(
              gh<_i32.FirebaseInitializer>(),
              gh<_i11.Factory<_i15.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i76.FirebaseChatService>(() => _i76.FirebaseChatService(
          gh<_i7.ChatRepository>(),
          gh<_i32.StorageService>(),
          gh<_i38.FileService>(),
        ));
    gh.factory<_i77.FirebaseStorageService>(
        () => _i77.FirebaseStorageService(gh<_i61.StorageRepository>()));
    gh.factory<_i78.FirebaseUserService>(() => _i78.FirebaseUserService(
          gh<_i32.UserRepository>(),
          gh<_i32.StorageService>(),
          gh<_i11.Factory<_i2.Future<_i17.UserModel>, _i17.UserModelDto>>(),
          gh<_i11.Factory<_i17.UserModelDto, _i17.UserModel>>(),
          gh<_i11.Factory<_i17.UserPresence, _i13.UserPresenceDto>>(),
        ));
    gh.factory<_i79.GetUserPresenceUseCase>(
        () => _i79.GetUserPresenceUseCase(gh<_i66.UserService>()));
    gh.factory<_i80.InitializeUserPresenceUseCase>(
        () => _i80.InitializeUserPresenceUseCase(gh<_i66.UserService>()));
  }
}

class _$MintModule extends _i81.MintModule {}
