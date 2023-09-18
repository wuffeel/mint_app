//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i12;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i11;
import '../../mint_core.dart' as _i13;
import '../../mint_module.dart' as _i34;
import '../assembly/entity/chat_room_from_map.dart' as _i16;
import '../assembly/entity/chat_user_data_from_map.dart' as _i23;
import '../assembly/entity/specialist_model_from_dto.dart' as _i52;
import '../assembly/entity/user_model_from_dto.dart' as _i51;
import '../assembly/entity/user_presence_from_dto.dart' as _i22;
import '../assembly/factory.dart' as _i7;
import '../assembly/model/specialist_model_to_dto.dart' as _i19;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i14;
import '../assembly/model/user_model_to_dto.dart' as _i10;
import '../assembly/modified_user_dto_to_map.dart' as _i15;
import '../bloc/chat/chat_bloc.dart' as _i50;
import '../bloc/presence_message/presence_message_bloc.dart' as _i41;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i17;
import '../data/model/user_model_dto/user_model_dto.dart' as _i8;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i21;
import '../data/repository/abstract/chat_repository.dart' as _i3;
import '../data/repository/abstract/file_repository.dart' as _i25;
import '../data/repository/abstract/firebase_initializer.dart' as _i30;
import '../data/repository/abstract/storage_repository.dart' as _i45;
import '../data/repository/abstract/user_repository.dart' as _i48;
import '../data/repository/file_repository_native.dart' as _i26;
import '../data/repository/file_repository_web.dart' as _i27;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i53;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i31;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i32;
import '../data/repository/firebase/firebase_user_repository.dart' as _i33;
import '../domain/controller/user_controller.dart' as _i47;
import '../domain/entity/specialist_model/specialist_model.dart' as _i18;
import '../domain/entity/user_model/user_model.dart' as _i9;
import '../domain/entity/user_presence/user_presence.dart' as _i20;
import '../domain/service/abstract/chat_service.dart' as _i4;
import '../domain/service/abstract/file_service.dart' as _i28;
import '../domain/service/abstract/storage_service.dart' as _i46;
import '../domain/service/abstract/user_service.dart' as _i49;
import '../domain/service/file_service_impl.dart' as _i29;
import '../domain/service/firebase/firebase_chat_service.dart' as _i54;
import '../domain/service/firebase/firebase_storage_service.dart' as _i55;
import '../domain/service/firebase/firebase_user_service.dart' as _i56;
import '../domain/use_case/create_chat_room_use_case.dart' as _i5;
import '../domain/use_case/delete_message_use_case.dart' as _i6;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i24;
import '../domain/use_case/get_messages_use_case.dart' as _i35;
import '../domain/use_case/get_user_presence_use_case.dart' as _i57;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i58;
import '../domain/use_case/load_file_use_case.dart' as _i36;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i37;
import '../domain/use_case/open_file_use_case.dart' as _i38;
import '../domain/use_case/pick_file_use_case.dart' as _i39;
import '../domain/use_case/pick_image_use_case.dart' as _i40;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i42;
import '../domain/use_case/save_audio_use_case.dart' as _i43;
import '../domain/use_case/send_message_use_case.dart' as _i44;
import '../module/mint_module.dart' as _i59;

const String _native = 'native';
const String _web = 'web';

class MintCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final mintModule = _$MintModule();
    gh.factory<_i3.ChatRepository>(() => mintModule.chatRepository);
    gh.factory<_i4.ChatService>(() => mintModule.chatService);
    gh.factory<_i5.CreateChatRoomUseCase>(
        () => _i5.CreateChatRoomUseCase(gh<_i4.ChatService>()));
    gh.factory<_i6.DeleteMessageUseCase>(
        () => _i6.DeleteMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i7.Factory<_i8.UserModelDto, _i9.UserModel>>(
      () => _i10.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i11.Factory<_i12.User, _i13.UserModelDto>>(
        () => _i14.UserModelDtoToChatUserMap());
    gh.factory<_i11.Factory<Map<String, dynamic>, _i13.UserModelDto>>(
        () => _i15.ModifiedUserDtoToMap());
    gh.factory<_i7.Factory<_i8.UserModelDto, _i9.UserModel>>(
      () => _i10.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i11.Factory<_i12.Room?, Map<String, dynamic>>>(
        () => _i16.ChatRoomFromMap());
    gh.factory<_i7.Factory<_i17.SpecialistModelDto, _i18.SpecialistModel>>(
        () => _i19.SpecialistModelToDto());
    gh.factory<_i11.Factory<_i20.UserPresence, _i21.UserPresenceDto>>(
        () => _i22.UserPresenceFromDto());
    gh.factory<_i11.Factory<_i12.User, Map<String, dynamic>>>(
        () => _i23.ChatUserDataFromMap());
    gh.factory<_i24.FetchChatRoomUseCase>(
        () => _i24.FetchChatRoomUseCase(gh<_i4.ChatService>()));
    gh.lazySingleton<_i25.FileRepository>(
      () => _i26.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i25.FileRepository>(
      () => _i27.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i28.FileService>(() => mintModule.fileService);
    gh.factory<_i29.FileServiceImpl>(
        () => _i29.FileServiceImpl(gh<_i25.FileRepository>()));
    gh.lazySingleton<_i30.FirebaseInitializer>(
      () => _i31.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i30.FirebaseInitializer>(
      () => _i31.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i32.FirebaseStorageRepository>(
        () => _i32.FirebaseStorageRepository(gh<_i30.FirebaseInitializer>()));
    gh.lazySingleton<_i33.FirebaseUserRepository>(
      () => _i33.FirebaseNativeUserRepository(
        gh<_i34.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i13.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.lazySingleton<_i33.FirebaseUserRepository>(
      () => _i33.FirebaseWebUserRepository(
        gh<_i34.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i13.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.factory<_i35.GetMessagesUseCase>(
        () => _i35.GetMessagesUseCase(gh<_i4.ChatService>()));
    gh.factory<_i36.LoadFileUseCase>(
        () => _i36.LoadFileUseCase(gh<_i28.FileService>()));
    gh.factory<_i37.MessageMarkAsReadUseCase>(
        () => _i37.MessageMarkAsReadUseCase(gh<_i4.ChatService>()));
    gh.factory<_i38.OpenFileUseCase>(
        () => _i38.OpenFileUseCase(gh<_i28.FileService>()));
    gh.factory<_i39.PickFileUseCase>(
        () => _i39.PickFileUseCase(gh<_i28.FileService>()));
    gh.factory<_i40.PickImageUseCase>(
        () => _i40.PickImageUseCase(gh<_i28.FileService>()));
    gh.factory<_i41.PresenceMessageBloc>(
        () => _i41.PresenceMessageBloc(gh<_i37.MessageMarkAsReadUseCase>()));
    gh.factory<_i42.PreviewDataFetchedUseCase>(
        () => _i42.PreviewDataFetchedUseCase(gh<_i4.ChatService>()));
    gh.factory<_i43.SaveAudioUseCase>(
        () => _i43.SaveAudioUseCase(gh<_i28.FileService>()));
    gh.factory<_i44.SendMessageUseCase>(
        () => _i44.SendMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i45.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i46.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i47.UserController<_i9.PatientUser?>>(
      () => _i47.UserControllerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i47.UserController<_i9.UserModel?>>(
      () => _i47.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.factory<_i48.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i49.UserService>(() => mintModule.userService);
    gh.factory<_i50.ChatBloc<_i13.UserModel?>>(() => _i50.ChatBlocBasic(
          gh<_i47.UserController<_i13.UserModel?>>(),
          gh<_i35.GetMessagesUseCase>(),
          gh<_i5.CreateChatRoomUseCase>(),
          gh<_i44.SendMessageUseCase>(),
          gh<_i6.DeleteMessageUseCase>(),
          gh<_i42.PreviewDataFetchedUseCase>(),
          gh<_i40.PickImageUseCase>(),
          gh<_i39.PickFileUseCase>(),
          gh<_i34.LoadFileUseCase>(),
          gh<_i38.OpenFileUseCase>(),
          gh<_i43.SaveAudioUseCase>(),
        ));
    gh.factory<_i50.ChatBlocPatient>(
      () => _i50.ChatBlocPatient(
        gh<_i47.UserController<_i13.PatientUser?>>(),
        gh<_i35.GetMessagesUseCase>(),
        gh<_i5.CreateChatRoomUseCase>(),
        gh<_i44.SendMessageUseCase>(),
        gh<_i6.DeleteMessageUseCase>(),
        gh<_i42.PreviewDataFetchedUseCase>(),
        gh<_i40.PickImageUseCase>(),
        gh<_i39.PickFileUseCase>(),
        gh<_i34.LoadFileUseCase>(),
        gh<_i38.OpenFileUseCase>(),
        gh<_i43.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i7.Factory<_i2.Future<_i9.UserModel>, _i8.UserModelDto>>(
      () => _i51.PatientUserFromDto(gh<_i46.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i7.Factory<_i2.Future<_i9.UserModel>, _i8.UserModelDto>>(
      () => _i51.UserModelFromDto(gh<_i46.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<
            _i7.Factory<_i2.Future<_i18.SpecialistModel>,
                _i17.SpecialistModelDto>>(
        () => _i52.SpecialistModelFromDto(gh<_i46.StorageService>()));
    gh.lazySingleton<_i53.FirebaseChatRepository>(
        () => _i53.FirebaseChatRepository(
              gh<_i34.FirebaseInitializer>(),
              gh<_i11.Factory<_i12.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i54.FirebaseChatService>(() => _i54.FirebaseChatService(
          gh<_i3.ChatRepository>(),
          gh<_i34.StorageService>(),
          gh<_i28.FileService>(),
          gh<_i11.Factory<_i12.Room?, Map<String, dynamic>>>(),
        ));
    gh.factory<_i55.FirebaseStorageService>(
        () => _i55.FirebaseStorageService(gh<_i45.StorageRepository>()));
    gh.factory<_i56.FirebaseUserService>(() => _i56.FirebaseUserService(
          gh<_i34.UserRepository>(),
          gh<_i34.StorageService>(),
          gh<_i11.Factory<_i2.Future<_i13.UserModel>, _i13.UserModelDto>>(),
          gh<_i11.Factory<_i13.UserModelDto, _i13.UserModel>>(),
          gh<_i11.Factory<_i13.UserPresence, _i21.UserPresenceDto>>(),
        ));
    gh.factory<_i57.GetUserPresenceUseCase>(
        () => _i57.GetUserPresenceUseCase(gh<_i49.UserService>()));
    gh.factory<_i58.InitializeUserPresenceUseCase>(
        () => _i58.InitializeUserPresenceUseCase(gh<_i49.UserService>()));
  }
}

class _$MintModule extends _i59.MintModule {}
