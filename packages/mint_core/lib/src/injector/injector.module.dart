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
import '../../mint_module.dart' as _i31;
import '../assembly/entity/chat_room_from_map.dart' as _i17;
import '../assembly/entity/chat_user_data_from_map.dart' as _i16;
import '../assembly/entity/specialist_model_from_dto.dart' as _i47;
import '../assembly/entity/user_model_from_dto.dart' as _i46;
import '../assembly/factory.dart' as _i7;
import '../assembly/model/specialist_model_to_dto.dart' as _i20;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i14;
import '../assembly/model/user_model_to_dto.dart' as _i10;
import '../assembly/modified_user_dto_to_map.dart' as _i15;
import '../bloc/chat/chat_bloc.dart' as _i45;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i18;
import '../data/model/user_model_dto/user_model_dto.dart' as _i8;
import '../data/repository/abstract/chat_repository.dart' as _i3;
import '../data/repository/abstract/file_repository.dart' as _i22;
import '../data/repository/abstract/firebase_initializer.dart' as _i27;
import '../data/repository/abstract/storage_repository.dart' as _i40;
import '../data/repository/abstract/user_repository.dart' as _i43;
import '../data/repository/file_repository_native.dart' as _i24;
import '../data/repository/file_repository_web.dart' as _i23;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i48;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i28;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i29;
import '../data/repository/firebase/firebase_user_repository.dart' as _i30;
import '../domain/controller/user_controller.dart' as _i42;
import '../domain/entity/specialist_model/specialist_model.dart' as _i19;
import '../domain/entity/user_model/user_model.dart' as _i9;
import '../domain/service/abstract/chat_service.dart' as _i4;
import '../domain/service/abstract/file_service.dart' as _i25;
import '../domain/service/abstract/storage_service.dart' as _i41;
import '../domain/service/abstract/user_service.dart' as _i44;
import '../domain/service/file_service_impl.dart' as _i26;
import '../domain/service/firebase/firebase_chat_service.dart' as _i49;
import '../domain/service/firebase/firebase_storage_service.dart' as _i50;
import '../domain/service/firebase/firebase_user_service.dart' as _i51;
import '../domain/use_case/create_chat_room_use_case.dart' as _i5;
import '../domain/use_case/delete_message_use_case.dart' as _i6;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i21;
import '../domain/use_case/get_messages_use_case.dart' as _i32;
import '../domain/use_case/load_file_use_case.dart' as _i33;
import '../domain/use_case/open_file_use_case.dart' as _i34;
import '../domain/use_case/pick_file_use_case.dart' as _i35;
import '../domain/use_case/pick_image_use_case.dart' as _i36;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i37;
import '../domain/use_case/save_audio_use_case.dart' as _i38;
import '../domain/use_case/send_message_use_case.dart' as _i39;
import '../module/mint_module.dart' as _i52;

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
    gh.factory<_i11.Factory<_i12.User, Map<String, dynamic>>>(
        () => _i16.ChatUserDataFromMap());
    gh.factory<_i11.Factory<_i12.Room?, Map<String, dynamic>>>(
        () => _i17.ChatRoomFromMap());
    gh.factory<_i7.Factory<_i8.UserModelDto, _i9.UserModel>>(
      () => _i10.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i7.Factory<_i18.SpecialistModelDto, _i19.SpecialistModel>>(
        () => _i20.SpecialistModelToDto());
    gh.factory<_i21.FetchChatRoomUseCase>(
        () => _i21.FetchChatRoomUseCase(gh<_i4.ChatService>()));
    gh.lazySingleton<_i22.FileRepository>(
      () => _i23.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i22.FileRepository>(
      () => _i24.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.factory<_i25.FileService>(() => mintModule.fileService);
    gh.factory<_i26.FileServiceImpl>(
        () => _i26.FileServiceImpl(gh<_i22.FileRepository>()));
    gh.lazySingleton<_i27.FirebaseInitializer>(
      () => _i28.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i27.FirebaseInitializer>(
      () => _i28.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i29.FirebaseStorageRepository>(
        () => _i29.FirebaseStorageRepository(gh<_i27.FirebaseInitializer>()));
    gh.lazySingleton<_i30.FirebaseUserRepository>(
      () => _i30.FirebaseWebUserRepository(
        gh<_i31.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i13.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.lazySingleton<_i30.FirebaseUserRepository>(
      () => _i30.FirebaseNativeUserRepository(
        gh<_i31.FirebaseInitializer>(),
        gh<_i11.Factory<Map<String, dynamic>, _i13.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i32.GetMessagesUseCase>(
        () => _i32.GetMessagesUseCase(gh<_i4.ChatService>()));
    gh.factory<_i33.LoadFileUseCase>(
        () => _i33.LoadFileUseCase(gh<_i25.FileService>()));
    gh.factory<_i34.OpenFileUseCase>(
        () => _i34.OpenFileUseCase(gh<_i25.FileService>()));
    gh.factory<_i35.PickFileUseCase>(
        () => _i35.PickFileUseCase(gh<_i25.FileService>()));
    gh.factory<_i36.PickImageUseCase>(
        () => _i36.PickImageUseCase(gh<_i25.FileService>()));
    gh.factory<_i37.PreviewDataFetchedUseCase>(
        () => _i37.PreviewDataFetchedUseCase(gh<_i4.ChatService>()));
    gh.factory<_i38.SaveAudioUseCase>(
        () => _i38.SaveAudioUseCase(gh<_i25.FileService>()));
    gh.factory<_i39.SendMessageUseCase>(
        () => _i39.SendMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i40.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i41.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i42.UserController<_i9.PatientUser?>>(
      () => _i42.UserControllerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i42.UserController<_i9.UserModel?>>(
      () => _i42.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.factory<_i43.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i44.UserService>(() => mintModule.userService);
    gh.factory<_i45.ChatBloc<_i13.UserModel?>>(() => _i45.ChatBlocBasic(
          gh<_i42.UserController<_i13.UserModel?>>(),
          gh<_i32.GetMessagesUseCase>(),
          gh<_i5.CreateChatRoomUseCase>(),
          gh<_i39.SendMessageUseCase>(),
          gh<_i6.DeleteMessageUseCase>(),
          gh<_i37.PreviewDataFetchedUseCase>(),
          gh<_i36.PickImageUseCase>(),
          gh<_i35.PickFileUseCase>(),
          gh<_i31.LoadFileUseCase>(),
          gh<_i34.OpenFileUseCase>(),
          gh<_i38.SaveAudioUseCase>(),
        ));
    gh.factory<_i45.ChatBlocPatient>(
      () => _i45.ChatBlocPatient(
        gh<_i42.UserController<_i13.PatientUser?>>(),
        gh<_i32.GetMessagesUseCase>(),
        gh<_i5.CreateChatRoomUseCase>(),
        gh<_i39.SendMessageUseCase>(),
        gh<_i6.DeleteMessageUseCase>(),
        gh<_i37.PreviewDataFetchedUseCase>(),
        gh<_i36.PickImageUseCase>(),
        gh<_i35.PickFileUseCase>(),
        gh<_i31.LoadFileUseCase>(),
        gh<_i34.OpenFileUseCase>(),
        gh<_i38.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i7.Factory<_i2.Future<_i9.UserModel>, _i8.UserModelDto>>(
      () => _i46.UserModelFromDto(gh<_i41.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i7.Factory<_i2.Future<_i9.UserModel>, _i8.UserModelDto>>(
      () => _i46.PatientUserFromDto(gh<_i41.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<
            _i7.Factory<_i2.Future<_i19.SpecialistModel>,
                _i18.SpecialistModelDto>>(
        () => _i47.SpecialistModelFromDto(gh<_i41.StorageService>()));
    gh.lazySingleton<_i48.FirebaseChatRepository>(
        () => _i48.FirebaseChatRepository(
              gh<_i31.FirebaseInitializer>(),
              gh<_i11.Factory<_i12.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i49.FirebaseChatService>(() => _i49.FirebaseChatService(
          gh<_i3.ChatRepository>(),
          gh<_i31.StorageService>(),
          gh<_i25.FileService>(),
          gh<_i11.Factory<_i12.Room?, Map<String, dynamic>>>(),
        ));
    gh.factory<_i50.FirebaseStorageService>(
        () => _i50.FirebaseStorageService(gh<_i40.StorageRepository>()));
    gh.factory<_i51.FirebaseUserService>(() => _i51.FirebaseUserService(
          gh<_i31.UserRepository>(),
          gh<_i31.StorageService>(),
          gh<_i11.Factory<_i2.Future<_i13.UserModel>, _i13.UserModelDto>>(),
          gh<_i11.Factory<_i13.UserModelDto, _i13.UserModel>>(),
        ));
  }
}

class _$MintModule extends _i52.MintModule {}
