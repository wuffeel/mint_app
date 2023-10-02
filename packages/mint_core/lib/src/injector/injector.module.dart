//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i13;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i12;
import '../../mint_bloc.dart' as _i72;
import '../../mint_core.dart' as _i18;
import '../../mint_module.dart' as _i33;
import '../assembly/entity/chat_user_data_from_map.dart' as _i14;
import '../assembly/entity/notification_model_from_dto.dart' as _i31;
import '../assembly/entity/specialist_model_from_dto.dart' as _i74;
import '../assembly/entity/specialist_work_info_from_dto.dart' as _i20;
import '../assembly/entity/user_model_from_dto.dart' as _i73;
import '../assembly/entity/user_presence_from_dto.dart' as _i17;
import '../assembly/factory.dart' as _i21;
import '../assembly/model/specialist_model_to_dto.dart' as _i24;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i28;
import '../assembly/model/user_model_to_dto.dart' as _i27;
import '../assembly/modified_user_dto_to_map.dart' as _i19;
import '../bloc/app_notifications/app_notifications_bloc.dart' as _i69;
import '../bloc/chat/chat_bloc.dart' as _i70;
import '../bloc/chat_room/chat_room_bloc.dart' as _i71;
import '../bloc/presence_message/presence_message_bloc.dart' as _i58;
import '../bloc/unread_messages/unread_messages_bloc.dart' as _i65;
import '../data/model/notification_model_dto/notification_model_dto.dart'
    as _i30;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i22;
import '../data/model/specialist_work_info_dto/specialist_work_info_dto.dart'
    as _i44;
import '../data/model/user_model_dto/user_model_dto.dart' as _i25;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i16;
import '../data/repository/abstract/app_notification_repository.dart' as _i3;
import '../data/repository/abstract/booking_repository_base.dart' as _i5;
import '../data/repository/abstract/chat_repository.dart' as _i7;
import '../data/repository/abstract/file_repository.dart' as _i36;
import '../data/repository/abstract/firebase_initializer.dart' as _i45;
import '../data/repository/abstract/storage_repository.dart' as _i63;
import '../data/repository/abstract/user_repository.dart' as _i67;
import '../data/repository/file_repository_native.dart' as _i37;
import '../data/repository/file_repository_web.dart' as _i38;
import '../data/repository/firebase/firebase_app_notification_repository.dart'
    as _i75;
import '../data/repository/firebase/firebase_booking_repository_base.dart'
    as _i76;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i77;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i46;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i47;
import '../data/repository/firebase/firebase_user_repository.dart' as _i48;
import '../domain/controller/user_controller.dart' as _i66;
import '../domain/entity/notification_model/notification_model.dart' as _i29;
import '../domain/entity/specialist_model/specialist_model.dart' as _i23;
import '../domain/entity/specialist_work_info/specialist_work_info.dart'
    as _i43;
import '../domain/entity/user_model/user_model.dart' as _i26;
import '../domain/entity/user_presence/user_presence.dart' as _i15;
import '../domain/service/abstract/app_notification_service.dart' as _i4;
import '../domain/service/abstract/booking_service_base.dart' as _i6;
import '../domain/service/abstract/chat_service.dart' as _i8;
import '../domain/service/abstract/file_service.dart' as _i39;
import '../domain/service/abstract/storage_service.dart' as _i64;
import '../domain/service/abstract/user_service.dart' as _i68;
import '../domain/service/file_service_impl.dart' as _i40;
import '../domain/service/firebase/firebase_app_notification_service.dart'
    as _i41;
import '../domain/service/firebase/firebase_booking_service_base.dart' as _i42;
import '../domain/service/firebase/firebase_chat_service.dart' as _i78;
import '../domain/service/firebase/firebase_storage_service.dart' as _i79;
import '../domain/service/firebase/firebase_user_service.dart' as _i80;
import '../domain/use_case/clear_app_notifications_use_case.dart' as _i9;
import '../domain/use_case/create_chat_room_use_case.dart' as _i10;
import '../domain/use_case/delete_message_use_case.dart' as _i11;
import '../domain/use_case/fetch_chat_room_list_use_case.dart' as _i32;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i34;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i35;
import '../domain/use_case/get_app_notification_stream_use_case.dart' as _i49;
import '../domain/use_case/get_excluded_days_by_id.dart' as _i50;
import '../domain/use_case/get_messages_use_case.dart' as _i51;
import '../domain/use_case/get_user_presence_use_case.dart' as _i81;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i82;
import '../domain/use_case/load_file_use_case.dart' as _i52;
import '../domain/use_case/mark_app_notification_as_read_use_case.dart' as _i53;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i54;
import '../domain/use_case/open_file_use_case.dart' as _i55;
import '../domain/use_case/pick_file_use_case.dart' as _i56;
import '../domain/use_case/pick_image_use_case.dart' as _i57;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i59;
import '../domain/use_case/save_audio_use_case.dart' as _i60;
import '../domain/use_case/send_message_use_case.dart' as _i61;
import '../domain/use_case/specialist_work_info_fetch_use_case.dart' as _i62;
import '../module/mint_module.dart' as _i83;

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
    gh.factory<_i12.Factory<_i13.User, Map<String, dynamic>>>(
        () => _i14.ChatUserDataFromMap());
    gh.factory<_i12.Factory<_i15.UserPresence, _i16.UserPresenceDto>>(
        () => _i17.UserPresenceFromDto());
    gh.factory<_i12.Factory<Map<String, dynamic>, _i18.UserModelDto>>(
        () => _i19.ModifiedUserDtoToMap());
    gh.factory<
            _i12.Factory<_i18.SpecialistWorkInfo, _i18.SpecialistWorkInfoDto>>(
        () => _i20.SpecialistWorkInfoFromDto());
    gh.factory<_i21.Factory<_i22.SpecialistModelDto, _i23.SpecialistModel>>(
        () => _i24.SpecialistModelToDto());
    gh.factory<_i21.Factory<_i25.UserModelDto, _i26.UserModel>>(
      () => _i27.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i12.Factory<_i13.User, _i18.UserModelDto>>(
        () => _i28.UserModelDtoToChatUserMap());
    gh.factory<_i21.Factory<_i25.UserModelDto, _i26.UserModel>>(
      () => _i27.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<
            _i12.Factory<_i29.NotificationModel?, _i30.NotificationModelDto>>(
        () => _i31.NotificationModelFromDto());
    gh.factory<_i32.FetchChatRoomListUseCase>(
        () => _i32.FetchChatRoomListUseCase(gh<_i33.ChatService>()));
    gh.factory<_i34.FetchChatRoomUseCase>(
        () => _i34.FetchChatRoomUseCase(gh<_i8.ChatService>()));
    gh.factory<_i35.FetchUnreadMessagesCountUseCase>(
        () => _i35.FetchUnreadMessagesCountUseCase(gh<_i8.ChatService>()));
    gh.lazySingleton<_i36.FileRepository>(
      () => _i37.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i36.FileRepository>(
      () => _i38.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i39.FileService>(() => mintModule.fileService);
    gh.factory<_i40.FileServiceImpl>(
        () => _i40.FileServiceImpl(gh<_i36.FileRepository>()));
    gh.factory<_i41.FirebaseAppNotificationService>(() =>
        _i41.FirebaseAppNotificationService(
          gh<_i3.AppNotificationRepository>(),
          gh<
              _i12
              .Factory<_i29.NotificationModel?, _i30.NotificationModelDto>>(),
        ));
    gh.factory<_i42.FirebaseBookingServiceBase>(() =>
        _i42.FirebaseBookingServiceBase(
          gh<_i5.BookingRepositoryBase>(),
          gh<
              _i21
              .Factory<_i43.SpecialistWorkInfo, _i44.SpecialistWorkInfoDto>>(),
        ));
    gh.lazySingleton<_i45.FirebaseInitializer>(
      () => _i46.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i45.FirebaseInitializer>(
      () => _i46.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i47.FirebaseStorageRepository>(
        () => _i47.FirebaseStorageRepository(gh<_i45.FirebaseInitializer>()));
    gh.lazySingleton<_i48.FirebaseUserRepository>(
      () => _i48.FirebaseNativeUserRepository(
        gh<_i33.FirebaseInitializer>(),
        gh<_i12.Factory<Map<String, dynamic>, _i18.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.lazySingleton<_i48.FirebaseUserRepository>(
      () => _i48.FirebaseWebUserRepository(
        gh<_i33.FirebaseInitializer>(),
        gh<_i12.Factory<Map<String, dynamic>, _i18.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.factory<_i49.GetAppNotificationStreamUseCase>(() =>
        _i49.GetAppNotificationStreamUseCase(gh<_i4.AppNotificationService>()));
    gh.factory<_i50.GetExcludedDaysByIdUseCase>(
        () => _i50.GetExcludedDaysByIdUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i51.GetMessagesUseCase>(
        () => _i51.GetMessagesUseCase(gh<_i8.ChatService>()));
    gh.factory<_i52.LoadFileUseCase>(
        () => _i52.LoadFileUseCase(gh<_i39.FileService>()));
    gh.factory<_i53.MarkAppNotificationAsReadUseCase>(() =>
        _i53.MarkAppNotificationAsReadUseCase(
            gh<_i4.AppNotificationService>()));
    gh.factory<_i54.MessageMarkAsReadUseCase>(
        () => _i54.MessageMarkAsReadUseCase(gh<_i8.ChatService>()));
    gh.factory<_i55.OpenFileUseCase>(
        () => _i55.OpenFileUseCase(gh<_i39.FileService>()));
    gh.factory<_i56.PickFileUseCase>(
        () => _i56.PickFileUseCase(gh<_i39.FileService>()));
    gh.factory<_i57.PickImageUseCase>(
        () => _i57.PickImageUseCase(gh<_i39.FileService>()));
    gh.factory<_i58.PresenceMessageBloc>(
        () => _i58.PresenceMessageBloc(gh<_i54.MessageMarkAsReadUseCase>()));
    gh.factory<_i59.PreviewDataFetchedUseCase>(
        () => _i59.PreviewDataFetchedUseCase(gh<_i8.ChatService>()));
    gh.factory<_i60.SaveAudioUseCase>(
        () => _i60.SaveAudioUseCase(gh<_i39.FileService>()));
    gh.factory<_i61.SendMessageUseCase>(
        () => _i61.SendMessageUseCase(gh<_i8.ChatService>()));
    gh.factory<_i62.SpecialistWorkInfoFetchUseCase>(() =>
        _i62.SpecialistWorkInfoFetchUseCase(gh<_i6.BookingServiceBase>()));
    gh.factory<_i63.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i64.StorageService>(() => mintModule.storageService);
    gh.factory<_i65.UnreadMessagesBloc>(() =>
        _i65.UnreadMessagesBloc(gh<_i33.FetchUnreadMessagesCountUseCase>()));
    gh.lazySingleton<_i66.UserController<_i26.PatientUser?>>(
      () => _i66.UserControllerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i66.UserController<_i26.UserModel?>>(
      () => _i66.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.factory<_i67.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i68.UserService>(() => mintModule.userService);
    gh.factory<_i69.AppNotificationsBloc<_i18.UserModel?>>(
        () => _i69.AppNotificationsBlocBase(
              gh<_i49.GetAppNotificationStreamUseCase>(),
              gh<_i34.FetchChatRoomUseCase>(),
              gh<_i53.MarkAppNotificationAsReadUseCase>(),
              gh<_i9.ClearAppNotificationsUseCase>(),
              gh<_i66.UserController<_i18.UserModel?>>(),
            ));
    gh.factory<_i70.ChatBloc<_i18.UserModel?>>(() => _i70.ChatBlocBasic(
          gh<_i66.UserController<_i18.UserModel?>>(),
          gh<_i51.GetMessagesUseCase>(),
          gh<_i10.CreateChatRoomUseCase>(),
          gh<_i61.SendMessageUseCase>(),
          gh<_i11.DeleteMessageUseCase>(),
          gh<_i59.PreviewDataFetchedUseCase>(),
          gh<_i57.PickImageUseCase>(),
          gh<_i56.PickFileUseCase>(),
          gh<_i33.LoadFileUseCase>(),
          gh<_i55.OpenFileUseCase>(),
          gh<_i60.SaveAudioUseCase>(),
        ));
    gh.factory<_i70.ChatBlocPatient>(
      () => _i70.ChatBlocPatient(
        gh<_i66.UserController<_i18.PatientUser?>>(),
        gh<_i51.GetMessagesUseCase>(),
        gh<_i10.CreateChatRoomUseCase>(),
        gh<_i61.SendMessageUseCase>(),
        gh<_i11.DeleteMessageUseCase>(),
        gh<_i59.PreviewDataFetchedUseCase>(),
        gh<_i57.PickImageUseCase>(),
        gh<_i56.PickFileUseCase>(),
        gh<_i33.LoadFileUseCase>(),
        gh<_i55.OpenFileUseCase>(),
        gh<_i60.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i71.ChatRoomBloc<_i18.UserModel?>>(() => _i71.ChatRoomBlocBasic(
          gh<_i32.FetchChatRoomListUseCase>(),
          gh<_i72.UserController<_i18.UserModel?>>(),
        ));
    gh.factory<_i71.ChatRoomBlocPatient>(
      () => _i71.ChatRoomBlocPatient(
        gh<_i32.FetchChatRoomListUseCase>(),
        gh<_i72.UserController<_i18.PatientUser?>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i21.Factory<_i2.Future<_i26.UserModel>, _i25.UserModelDto>>(
      () => _i73.PatientUserFromDto(gh<_i64.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i21.Factory<_i2.Future<_i26.UserModel>, _i25.UserModelDto>>(
      () => _i73.UserModelFromDto(gh<_i64.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<
            _i21.Factory<_i2.Future<_i23.SpecialistModel>,
                _i22.SpecialistModelDto>>(
        () => _i74.SpecialistModelFromDto(gh<_i64.StorageService>()));
    gh.lazySingleton<_i75.FirebaseAppNotificationRepository>(() =>
        _i75.FirebaseAppNotificationRepository(gh<_i33.FirebaseInitializer>()));
    gh.lazySingleton<_i76.FirebaseBookingRepositoryBase>(() =>
        _i76.FirebaseBookingRepositoryBase(gh<_i33.FirebaseInitializer>()));
    gh.lazySingleton<_i77.FirebaseChatRepository>(
        () => _i77.FirebaseChatRepository(
              gh<_i33.FirebaseInitializer>(),
              gh<_i12.Factory<_i13.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i78.FirebaseChatService>(() => _i78.FirebaseChatService(
          gh<_i7.ChatRepository>(),
          gh<_i33.StorageService>(),
          gh<_i39.FileService>(),
        ));
    gh.factory<_i79.FirebaseStorageService>(
        () => _i79.FirebaseStorageService(gh<_i63.StorageRepository>()));
    gh.factory<_i80.FirebaseUserService>(() => _i80.FirebaseUserService(
          gh<_i33.UserRepository>(),
          gh<_i33.StorageService>(),
          gh<_i12.Factory<_i2.Future<_i18.UserModel>, _i18.UserModelDto>>(),
          gh<_i12.Factory<_i18.UserModelDto, _i18.UserModel>>(),
          gh<_i12.Factory<_i18.UserPresence, _i16.UserPresenceDto>>(),
        ));
    gh.factory<_i81.GetUserPresenceUseCase>(
        () => _i81.GetUserPresenceUseCase(gh<_i68.UserService>()));
    gh.factory<_i82.InitializeUserPresenceUseCase>(
        () => _i82.InitializeUserPresenceUseCase(gh<_i68.UserService>()));
  }
}

class _$MintModule extends _i83.MintModule {}
