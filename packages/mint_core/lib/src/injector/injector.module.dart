//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i20;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i16;
import '../../mint_bloc.dart' as _i61;
import '../../mint_core.dart' as _i17;
import '../../mint_module.dart' as _i27;
import '../assembly/entity/chat_user_data_from_map.dart' as _i22;
import '../assembly/entity/specialist_model_from_dto.dart' as _i62;
import '../assembly/entity/specialist_work_info_from_dto.dart' as _i19;
import '../assembly/entity/user_model_from_dto.dart' as _i63;
import '../assembly/entity/user_presence_from_dto.dart' as _i25;
import '../assembly/factory.dart' as _i9;
import '../assembly/model/specialist_model_to_dto.dart' as _i15;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i21;
import '../assembly/model/user_model_to_dto.dart' as _i12;
import '../assembly/modified_user_dto_to_map.dart' as _i18;
import '../bloc/chat/chat_bloc.dart' as _i59;
import '../bloc/chat_room/chat_room_bloc.dart' as _i60;
import '../bloc/presence_message/presence_message_bloc.dart' as _i49;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i13;
import '../data/model/specialist_work_info_dto/specialist_work_info_dto.dart'
    as _i37;
import '../data/model/user_model_dto/user_model_dto.dart' as _i10;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i24;
import '../data/repository/abstract/booking_repository_base.dart' as _i3;
import '../data/repository/abstract/chat_repository.dart' as _i5;
import '../data/repository/abstract/file_repository.dart' as _i30;
import '../data/repository/abstract/firebase_initializer.dart' as _i38;
import '../data/repository/abstract/storage_repository.dart' as _i54;
import '../data/repository/abstract/user_repository.dart' as _i57;
import '../data/repository/file_repository_native.dart' as _i31;
import '../data/repository/file_repository_web.dart' as _i32;
import '../data/repository/firebase/firebase_booking_repository_base.dart'
    as _i64;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i65;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i39;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i40;
import '../data/repository/firebase/firebase_user_repository.dart' as _i41;
import '../domain/controller/user_controller.dart' as _i56;
import '../domain/entity/specialist_model/specialist_model.dart' as _i14;
import '../domain/entity/specialist_work_info/specialist_work_info.dart'
    as _i36;
import '../domain/entity/user_model/user_model.dart' as _i11;
import '../domain/entity/user_presence/user_presence.dart' as _i23;
import '../domain/service/abstract/booking_service_base.dart' as _i4;
import '../domain/service/abstract/chat_service.dart' as _i6;
import '../domain/service/abstract/file_service.dart' as _i33;
import '../domain/service/abstract/storage_service.dart' as _i55;
import '../domain/service/abstract/user_service.dart' as _i58;
import '../domain/service/file_service_impl.dart' as _i34;
import '../domain/service/firebase/firebase_booking_service_base.dart' as _i35;
import '../domain/service/firebase/firebase_chat_service.dart' as _i66;
import '../domain/service/firebase/firebase_storage_service.dart' as _i67;
import '../domain/service/firebase/firebase_user_service.dart' as _i68;
import '../domain/use_case/create_chat_room_use_case.dart' as _i7;
import '../domain/use_case/delete_message_use_case.dart' as _i8;
import '../domain/use_case/fetch_chat_room_list_use_case.dart' as _i26;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i28;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i29;
import '../domain/use_case/get_excluded_days_by_id.dart' as _i42;
import '../domain/use_case/get_messages_use_case.dart' as _i43;
import '../domain/use_case/get_user_presence_use_case.dart' as _i69;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i70;
import '../domain/use_case/load_file_use_case.dart' as _i44;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i45;
import '../domain/use_case/open_file_use_case.dart' as _i46;
import '../domain/use_case/pick_file_use_case.dart' as _i47;
import '../domain/use_case/pick_image_use_case.dart' as _i48;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i50;
import '../domain/use_case/save_audio_use_case.dart' as _i51;
import '../domain/use_case/send_message_use_case.dart' as _i52;
import '../domain/use_case/specialist_work_info_fetch_use_case.dart' as _i53;
import '../module/mint_module.dart' as _i71;

const String _web = 'web';
const String _native = 'native';

class MintCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final mintModule = _$MintModule();
    gh.factory<_i3.BookingRepositoryBase>(
        () => mintModule.bookingRepositoryBase);
    gh.factory<_i4.BookingServiceBase>(() => mintModule.bookingServiceBase);
    gh.factory<_i5.ChatRepository>(() => mintModule.chatRepository);
    gh.factory<_i6.ChatService>(() => mintModule.chatService);
    gh.factory<_i7.CreateChatRoomUseCase>(
        () => _i7.CreateChatRoomUseCase(gh<_i6.ChatService>()));
    gh.factory<_i8.DeleteMessageUseCase>(
        () => _i8.DeleteMessageUseCase(gh<_i6.ChatService>()));
    gh.factory<_i9.Factory<_i10.UserModelDto, _i11.UserModel>>(
      () => _i12.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i9.Factory<_i13.SpecialistModelDto, _i14.SpecialistModel>>(
        () => _i15.SpecialistModelToDto());
    gh.factory<_i16.Factory<Map<String, dynamic>, _i17.UserModelDto>>(
        () => _i18.ModifiedUserDtoToMap());
    gh.factory<
            _i16.Factory<_i17.SpecialistWorkInfo, _i17.SpecialistWorkInfoDto>>(
        () => _i19.SpecialistWorkInfoFromDto());
    gh.factory<_i16.Factory<_i20.User, _i17.UserModelDto>>(
        () => _i21.UserModelDtoToChatUserMap());
    gh.factory<_i16.Factory<_i20.User, Map<String, dynamic>>>(
        () => _i22.ChatUserDataFromMap());
    gh.factory<_i9.Factory<_i10.UserModelDto, _i11.UserModel>>(
      () => _i12.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i16.Factory<_i23.UserPresence, _i24.UserPresenceDto>>(
        () => _i25.UserPresenceFromDto());
    gh.factory<_i26.FetchChatRoomListUseCase>(
        () => _i26.FetchChatRoomListUseCase(gh<_i27.ChatService>()));
    gh.factory<_i28.FetchChatRoomUseCase>(
        () => _i28.FetchChatRoomUseCase(gh<_i6.ChatService>()));
    gh.factory<_i29.FetchUnreadMessagesCountUseCase>(
        () => _i29.FetchUnreadMessagesCountUseCase(gh<_i6.ChatService>()));
    gh.lazySingleton<_i30.FileRepository>(
      () => _i31.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i30.FileRepository>(
      () => _i32.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i33.FileService>(() => mintModule.fileService);
    gh.factory<_i34.FileServiceImpl>(
        () => _i34.FileServiceImpl(gh<_i30.FileRepository>()));
    gh.factory<_i35.FirebaseBookingServiceBase>(() =>
        _i35.FirebaseBookingServiceBase(
          gh<_i3.BookingRepositoryBase>(),
          gh<
              _i9
              .Factory<_i36.SpecialistWorkInfo, _i37.SpecialistWorkInfoDto>>(),
        ));
    gh.lazySingleton<_i38.FirebaseInitializer>(
      () => _i39.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i38.FirebaseInitializer>(
      () => _i39.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i40.FirebaseStorageRepository>(
        () => _i40.FirebaseStorageRepository(gh<_i38.FirebaseInitializer>()));
    gh.lazySingleton<_i41.FirebaseUserRepository>(
      () => _i41.FirebaseNativeUserRepository(
        gh<_i27.FirebaseInitializer>(),
        gh<_i16.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.lazySingleton<_i41.FirebaseUserRepository>(
      () => _i41.FirebaseWebUserRepository(
        gh<_i27.FirebaseInitializer>(),
        gh<_i16.Factory<Map<String, dynamic>, _i17.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.factory<_i42.GetExcludedDaysByIdUseCase>(
        () => _i42.GetExcludedDaysByIdUseCase(gh<_i4.BookingServiceBase>()));
    gh.factory<_i43.GetMessagesUseCase>(
        () => _i43.GetMessagesUseCase(gh<_i6.ChatService>()));
    gh.factory<_i44.LoadFileUseCase>(
        () => _i44.LoadFileUseCase(gh<_i33.FileService>()));
    gh.factory<_i45.MessageMarkAsReadUseCase>(
        () => _i45.MessageMarkAsReadUseCase(gh<_i6.ChatService>()));
    gh.factory<_i46.OpenFileUseCase>(
        () => _i46.OpenFileUseCase(gh<_i33.FileService>()));
    gh.factory<_i47.PickFileUseCase>(
        () => _i47.PickFileUseCase(gh<_i33.FileService>()));
    gh.factory<_i48.PickImageUseCase>(
        () => _i48.PickImageUseCase(gh<_i33.FileService>()));
    gh.factory<_i49.PresenceMessageBloc>(
        () => _i49.PresenceMessageBloc(gh<_i45.MessageMarkAsReadUseCase>()));
    gh.factory<_i50.PreviewDataFetchedUseCase>(
        () => _i50.PreviewDataFetchedUseCase(gh<_i6.ChatService>()));
    gh.factory<_i51.SaveAudioUseCase>(
        () => _i51.SaveAudioUseCase(gh<_i33.FileService>()));
    gh.factory<_i52.SendMessageUseCase>(
        () => _i52.SendMessageUseCase(gh<_i6.ChatService>()));
    gh.factory<_i53.SpecialistWorkInfoFetchUseCase>(() =>
        _i53.SpecialistWorkInfoFetchUseCase(gh<_i4.BookingServiceBase>()));
    gh.factory<_i54.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i55.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i56.UserController<_i11.UserModel?>>(
      () => _i56.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i56.UserController<_i11.PatientUser?>>(
      () => _i56.UserControllerNative(),
      registerFor: {_native},
    );
    gh.factory<_i57.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i58.UserService>(() => mintModule.userService);
    gh.factory<_i59.ChatBloc<_i17.UserModel?>>(() => _i59.ChatBlocBasic(
          gh<_i56.UserController<_i17.UserModel?>>(),
          gh<_i43.GetMessagesUseCase>(),
          gh<_i7.CreateChatRoomUseCase>(),
          gh<_i52.SendMessageUseCase>(),
          gh<_i8.DeleteMessageUseCase>(),
          gh<_i50.PreviewDataFetchedUseCase>(),
          gh<_i48.PickImageUseCase>(),
          gh<_i47.PickFileUseCase>(),
          gh<_i27.LoadFileUseCase>(),
          gh<_i46.OpenFileUseCase>(),
          gh<_i51.SaveAudioUseCase>(),
        ));
    gh.factory<_i59.ChatBlocPatient>(
      () => _i59.ChatBlocPatient(
        gh<_i56.UserController<_i17.PatientUser?>>(),
        gh<_i43.GetMessagesUseCase>(),
        gh<_i7.CreateChatRoomUseCase>(),
        gh<_i52.SendMessageUseCase>(),
        gh<_i8.DeleteMessageUseCase>(),
        gh<_i50.PreviewDataFetchedUseCase>(),
        gh<_i48.PickImageUseCase>(),
        gh<_i47.PickFileUseCase>(),
        gh<_i27.LoadFileUseCase>(),
        gh<_i46.OpenFileUseCase>(),
        gh<_i51.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i60.ChatRoomBloc<_i17.UserModel?>>(() => _i60.ChatRoomBlocBasic(
          gh<_i26.FetchChatRoomListUseCase>(),
          gh<_i61.UserController<_i17.UserModel?>>(),
        ));
    gh.factory<_i60.ChatRoomBlocPatient>(
      () => _i60.ChatRoomBlocPatient(
        gh<_i26.FetchChatRoomListUseCase>(),
        gh<_i61.UserController<_i17.PatientUser?>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<
            _i9.Factory<_i2.Future<_i14.SpecialistModel>,
                _i13.SpecialistModelDto>>(
        () => _i62.SpecialistModelFromDto(gh<_i55.StorageService>()));
    gh.factory<_i9.Factory<_i2.Future<_i11.UserModel>, _i10.UserModelDto>>(
      () => _i63.UserModelFromDto(gh<_i55.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i9.Factory<_i2.Future<_i11.UserModel>, _i10.UserModelDto>>(
      () => _i63.PatientUserFromDto(gh<_i55.StorageService>()),
      registerFor: {_native},
    );
    gh.lazySingleton<_i64.FirebaseBookingRepositoryBase>(() =>
        _i64.FirebaseBookingRepositoryBase(gh<_i27.FirebaseInitializer>()));
    gh.lazySingleton<_i65.FirebaseChatRepository>(
        () => _i65.FirebaseChatRepository(
              gh<_i27.FirebaseInitializer>(),
              gh<_i16.Factory<_i20.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i66.FirebaseChatService>(() => _i66.FirebaseChatService(
          gh<_i5.ChatRepository>(),
          gh<_i27.StorageService>(),
          gh<_i33.FileService>(),
        ));
    gh.factory<_i67.FirebaseStorageService>(
        () => _i67.FirebaseStorageService(gh<_i54.StorageRepository>()));
    gh.factory<_i68.FirebaseUserService>(() => _i68.FirebaseUserService(
          gh<_i27.UserRepository>(),
          gh<_i27.StorageService>(),
          gh<_i16.Factory<_i2.Future<_i17.UserModel>, _i17.UserModelDto>>(),
          gh<_i16.Factory<_i17.UserModelDto, _i17.UserModel>>(),
          gh<_i16.Factory<_i17.UserPresence, _i24.UserPresenceDto>>(),
        ));
    gh.factory<_i69.GetUserPresenceUseCase>(
        () => _i69.GetUserPresenceUseCase(gh<_i58.UserService>()));
    gh.factory<_i70.InitializeUserPresenceUseCase>(
        () => _i70.InitializeUserPresenceUseCase(gh<_i58.UserService>()));
  }
}

class _$MintModule extends _i71.MintModule {}
