//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i23;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i9;
import '../../mint_core.dart' as _i10;
import '../../mint_module.dart' as _i40;
import '../assembly/entity/chat_user_data_from_map.dart' as _i24;
import '../assembly/entity/specialist_model_from_dto.dart' as _i60;
import '../assembly/entity/specialist_work_info_from_dto.dart' as _i11;
import '../assembly/entity/user_model_from_dto.dart' as _i59;
import '../assembly/entity/user_presence_from_dto.dart' as _i21;
import '../assembly/factory.dart' as _i12;
import '../assembly/model/specialist_model_to_dto.dart' as _i18;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i25;
import '../assembly/model/user_model_to_dto.dart' as _i15;
import '../assembly/modified_user_dto_to_map.dart' as _i22;
import '../bloc/chat/chat_bloc.dart' as _i58;
import '../bloc/presence_message/presence_message_bloc.dart' as _i48;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i16;
import '../data/model/specialist_work_info_dto/specialist_work_info_dto.dart'
    as _i35;
import '../data/model/user_model_dto/user_model_dto.dart' as _i13;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i20;
import '../data/repository/abstract/booking_repository_base.dart' as _i3;
import '../data/repository/abstract/chat_repository.dart' as _i5;
import '../data/repository/abstract/file_repository.dart' as _i28;
import '../data/repository/abstract/firebase_initializer.dart' as _i36;
import '../data/repository/abstract/storage_repository.dart' as _i53;
import '../data/repository/abstract/user_repository.dart' as _i56;
import '../data/repository/file_repository_native.dart' as _i29;
import '../data/repository/file_repository_web.dart' as _i30;
import '../data/repository/firebase/firebase_booking_repository_base.dart'
    as _i61;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i62;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i37;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i38;
import '../data/repository/firebase/firebase_user_repository.dart' as _i39;
import '../domain/controller/user_controller.dart' as _i55;
import '../domain/entity/specialist_model/specialist_model.dart' as _i17;
import '../domain/entity/specialist_work_info/specialist_work_info.dart'
    as _i34;
import '../domain/entity/user_model/user_model.dart' as _i14;
import '../domain/entity/user_presence/user_presence.dart' as _i19;
import '../domain/service/abstract/booking_service_base.dart' as _i4;
import '../domain/service/abstract/chat_service.dart' as _i6;
import '../domain/service/abstract/file_service.dart' as _i31;
import '../domain/service/abstract/storage_service.dart' as _i54;
import '../domain/service/abstract/user_service.dart' as _i57;
import '../domain/service/file_service_impl.dart' as _i32;
import '../domain/service/firebase/firebase_booking_service_base.dart' as _i33;
import '../domain/service/firebase/firebase_chat_service.dart' as _i63;
import '../domain/service/firebase/firebase_storage_service.dart' as _i64;
import '../domain/service/firebase/firebase_user_service.dart' as _i65;
import '../domain/use_case/create_chat_room_use_case.dart' as _i7;
import '../domain/use_case/delete_message_use_case.dart' as _i8;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i26;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i27;
import '../domain/use_case/get_excluded_days_by_id.dart' as _i41;
import '../domain/use_case/get_messages_use_case.dart' as _i42;
import '../domain/use_case/get_user_presence_use_case.dart' as _i66;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i67;
import '../domain/use_case/load_file_use_case.dart' as _i43;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i44;
import '../domain/use_case/open_file_use_case.dart' as _i45;
import '../domain/use_case/pick_file_use_case.dart' as _i46;
import '../domain/use_case/pick_image_use_case.dart' as _i47;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i49;
import '../domain/use_case/save_audio_use_case.dart' as _i50;
import '../domain/use_case/send_message_use_case.dart' as _i51;
import '../domain/use_case/specialist_work_info_fetch_use_case.dart' as _i52;
import '../module/mint_module.dart' as _i68;

const String _native = 'native';
const String _web = 'web';

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
    gh.factory<
            _i9.Factory<_i10.SpecialistWorkInfo, _i10.SpecialistWorkInfoDto>>(
        () => _i11.SpecialistWorkInfoFromDto());
    gh.factory<_i12.Factory<_i13.UserModelDto, _i14.UserModel>>(
      () => _i15.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i12.Factory<_i16.SpecialistModelDto, _i17.SpecialistModel>>(
        () => _i18.SpecialistModelToDto());
    gh.factory<_i9.Factory<_i19.UserPresence, _i20.UserPresenceDto>>(
        () => _i21.UserPresenceFromDto());
    gh.factory<_i9.Factory<Map<String, dynamic>, _i10.UserModelDto>>(
        () => _i22.ModifiedUserDtoToMap());
    gh.factory<_i9.Factory<_i23.User, Map<String, dynamic>>>(
        () => _i24.ChatUserDataFromMap());
    gh.factory<_i12.Factory<_i13.UserModelDto, _i14.UserModel>>(
      () => _i15.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i9.Factory<_i23.User, _i10.UserModelDto>>(
        () => _i25.UserModelDtoToChatUserMap());
    gh.factory<_i26.FetchChatRoomUseCase>(
        () => _i26.FetchChatRoomUseCase(gh<_i6.ChatService>()));
    gh.factory<_i27.FetchUnreadMessagesCountUseCase>(
        () => _i27.FetchUnreadMessagesCountUseCase(gh<_i6.ChatService>()));
    gh.lazySingleton<_i28.FileRepository>(
      () => _i29.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i28.FileRepository>(
      () => _i30.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i31.FileService>(() => mintModule.fileService);
    gh.factory<_i32.FileServiceImpl>(
        () => _i32.FileServiceImpl(gh<_i28.FileRepository>()));
    gh.factory<_i33.FirebaseBookingServiceBase>(() =>
        _i33.FirebaseBookingServiceBase(
          gh<_i3.BookingRepositoryBase>(),
          gh<
              _i12
              .Factory<_i34.SpecialistWorkInfo, _i35.SpecialistWorkInfoDto>>(),
        ));
    gh.lazySingleton<_i36.FirebaseInitializer>(
      () => _i37.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i36.FirebaseInitializer>(
      () => _i37.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i38.FirebaseStorageRepository>(
        () => _i38.FirebaseStorageRepository(gh<_i36.FirebaseInitializer>()));
    gh.lazySingleton<_i39.FirebaseUserRepository>(
      () => _i39.FirebaseNativeUserRepository(
        gh<_i40.FirebaseInitializer>(),
        gh<_i9.Factory<Map<String, dynamic>, _i10.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.lazySingleton<_i39.FirebaseUserRepository>(
      () => _i39.FirebaseWebUserRepository(
        gh<_i40.FirebaseInitializer>(),
        gh<_i9.Factory<Map<String, dynamic>, _i10.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.factory<_i41.GetExcludedDaysByIdUseCase>(
        () => _i41.GetExcludedDaysByIdUseCase(gh<_i4.BookingServiceBase>()));
    gh.factory<_i42.GetMessagesUseCase>(
        () => _i42.GetMessagesUseCase(gh<_i6.ChatService>()));
    gh.factory<_i43.LoadFileUseCase>(
        () => _i43.LoadFileUseCase(gh<_i31.FileService>()));
    gh.factory<_i44.MessageMarkAsReadUseCase>(
        () => _i44.MessageMarkAsReadUseCase(gh<_i6.ChatService>()));
    gh.factory<_i45.OpenFileUseCase>(
        () => _i45.OpenFileUseCase(gh<_i31.FileService>()));
    gh.factory<_i46.PickFileUseCase>(
        () => _i46.PickFileUseCase(gh<_i31.FileService>()));
    gh.factory<_i47.PickImageUseCase>(
        () => _i47.PickImageUseCase(gh<_i31.FileService>()));
    gh.factory<_i48.PresenceMessageBloc>(
        () => _i48.PresenceMessageBloc(gh<_i44.MessageMarkAsReadUseCase>()));
    gh.factory<_i49.PreviewDataFetchedUseCase>(
        () => _i49.PreviewDataFetchedUseCase(gh<_i6.ChatService>()));
    gh.factory<_i50.SaveAudioUseCase>(
        () => _i50.SaveAudioUseCase(gh<_i31.FileService>()));
    gh.factory<_i51.SendMessageUseCase>(
        () => _i51.SendMessageUseCase(gh<_i6.ChatService>()));
    gh.factory<_i52.SpecialistWorkInfoFetchUseCase>(() =>
        _i52.SpecialistWorkInfoFetchUseCase(gh<_i4.BookingServiceBase>()));
    gh.factory<_i53.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i54.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i55.UserController<_i14.UserModel?>>(
      () => _i55.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i55.UserController<_i14.PatientUser?>>(
      () => _i55.UserControllerNative(),
      registerFor: {_native},
    );
    gh.factory<_i56.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i57.UserService>(() => mintModule.userService);
    gh.factory<_i58.ChatBloc<_i10.UserModel?>>(() => _i58.ChatBlocBasic(
          gh<_i55.UserController<_i10.UserModel?>>(),
          gh<_i42.GetMessagesUseCase>(),
          gh<_i7.CreateChatRoomUseCase>(),
          gh<_i51.SendMessageUseCase>(),
          gh<_i8.DeleteMessageUseCase>(),
          gh<_i49.PreviewDataFetchedUseCase>(),
          gh<_i47.PickImageUseCase>(),
          gh<_i46.PickFileUseCase>(),
          gh<_i40.LoadFileUseCase>(),
          gh<_i45.OpenFileUseCase>(),
          gh<_i50.SaveAudioUseCase>(),
        ));
    gh.factory<_i58.ChatBlocPatient>(
      () => _i58.ChatBlocPatient(
        gh<_i55.UserController<_i10.PatientUser?>>(),
        gh<_i42.GetMessagesUseCase>(),
        gh<_i7.CreateChatRoomUseCase>(),
        gh<_i51.SendMessageUseCase>(),
        gh<_i8.DeleteMessageUseCase>(),
        gh<_i49.PreviewDataFetchedUseCase>(),
        gh<_i47.PickImageUseCase>(),
        gh<_i46.PickFileUseCase>(),
        gh<_i40.LoadFileUseCase>(),
        gh<_i45.OpenFileUseCase>(),
        gh<_i50.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i12.Factory<_i2.Future<_i14.UserModel>, _i13.UserModelDto>>(
      () => _i59.PatientUserFromDto(gh<_i54.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<
            _i12.Factory<_i2.Future<_i17.SpecialistModel>,
                _i16.SpecialistModelDto>>(
        () => _i60.SpecialistModelFromDto(gh<_i54.StorageService>()));
    gh.factory<_i12.Factory<_i2.Future<_i14.UserModel>, _i13.UserModelDto>>(
      () => _i59.UserModelFromDto(gh<_i54.StorageService>()),
      registerFor: {_web},
    );
    gh.lazySingleton<_i61.FirebaseBookingRepositoryBase>(() =>
        _i61.FirebaseBookingRepositoryBase(gh<_i40.FirebaseInitializer>()));
    gh.lazySingleton<_i62.FirebaseChatRepository>(
        () => _i62.FirebaseChatRepository(
              gh<_i40.FirebaseInitializer>(),
              gh<_i9.Factory<_i23.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i63.FirebaseChatService>(() => _i63.FirebaseChatService(
          gh<_i5.ChatRepository>(),
          gh<_i40.StorageService>(),
          gh<_i31.FileService>(),
        ));
    gh.factory<_i64.FirebaseStorageService>(
        () => _i64.FirebaseStorageService(gh<_i53.StorageRepository>()));
    gh.factory<_i65.FirebaseUserService>(() => _i65.FirebaseUserService(
          gh<_i40.UserRepository>(),
          gh<_i40.StorageService>(),
          gh<_i9.Factory<_i2.Future<_i10.UserModel>, _i10.UserModelDto>>(),
          gh<_i9.Factory<_i10.UserModelDto, _i10.UserModel>>(),
          gh<_i9.Factory<_i10.UserPresence, _i20.UserPresenceDto>>(),
        ));
    gh.factory<_i66.GetUserPresenceUseCase>(
        () => _i66.GetUserPresenceUseCase(gh<_i57.UserService>()));
    gh.factory<_i67.InitializeUserPresenceUseCase>(
        () => _i67.InitializeUserPresenceUseCase(gh<_i57.UserService>()));
  }
}

class _$MintModule extends _i68.MintModule {}
