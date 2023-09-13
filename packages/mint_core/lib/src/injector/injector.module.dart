//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i8;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i7;
import '../../mint_core.dart' as _i15;
import '../../mint_module.dart' as _i27;
import '../assembly/entity/chat_room_from_map.dart' as _i9;
import '../assembly/entity/chat_user_data_from_map.dart' as _i10;
import '../assembly/entity/specialist_model_from_dto.dart' as _i45;
import '../assembly/entity/user_model_from_dto.dart' as _i44;
import '../assembly/factory.dart' as _i11;
import '../assembly/model/specialist_model_to_dto.dart' as _i14;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i17;
import '../assembly/model/user_model_to_dto.dart' as _i46;
import '../assembly/modified_user_dto_to_map.dart' as _i16;
import '../bloc/chat/chat_bloc.dart' as _i42;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i12;
import '../data/model/user_model_dto/user_model_dto.dart' as _i43;
import '../data/repository/abstract/chat_repository.dart' as _i3;
import '../data/repository/abstract/file_repository.dart' as _i19;
import '../data/repository/abstract/firebase_initializer.dart' as _i23;
import '../data/repository/abstract/storage_repository.dart' as _i36;
import '../data/repository/abstract/user_repository.dart' as _i40;
import '../data/repository/file_repository_impl.dart' as _i20;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i47;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i24;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i25;
import '../data/repository/firebase/firebase_user_repository.dart' as _i26;
import '../domain/controller/user_controller.dart' as _i38;
import '../domain/entity/specialist_model/specialist_model.dart' as _i13;
import '../domain/entity/user_model/user_model.dart' as _i39;
import '../domain/service/abstract/chat_service.dart' as _i4;
import '../domain/service/abstract/file_service.dart' as _i21;
import '../domain/service/abstract/storage_service.dart' as _i37;
import '../domain/service/abstract/user_service.dart' as _i41;
import '../domain/service/file_service_impl.dart' as _i22;
import '../domain/service/firebase/firebase_chat_service.dart' as _i48;
import '../domain/service/firebase/firebase_storage_service.dart' as _i49;
import '../domain/service/firebase/firebase_user_service.dart' as _i50;
import '../domain/use_case/create_chat_room_use_case.dart' as _i5;
import '../domain/use_case/delete_message_use_case.dart' as _i6;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i18;
import '../domain/use_case/get_messages_use_case.dart' as _i28;
import '../domain/use_case/load_file_use_case.dart' as _i29;
import '../domain/use_case/open_file_use_case.dart' as _i30;
import '../domain/use_case/pick_file_use_case.dart' as _i31;
import '../domain/use_case/pick_image_use_case.dart' as _i32;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i33;
import '../domain/use_case/save_audio_use_case.dart' as _i34;
import '../domain/use_case/send_message_use_case.dart' as _i35;
import '../module/mint_module.dart' as _i51;

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
    gh.factory<_i7.Factory<_i8.Room?, Map<String, dynamic>>>(
        () => _i9.ChatRoomFromMap());
    gh.factory<_i7.Factory<_i8.User, Map<String, dynamic>>>(
        () => _i10.ChatUserDataFromMap());
    gh.factory<_i11.Factory<_i12.SpecialistModelDto, _i13.SpecialistModel>>(
        () => _i14.SpecialistModelToDto());
    gh.factory<_i7.Factory<Map<String, dynamic>, _i15.UserModelDto>>(
        () => _i16.ModifiedUserDtoToMap());
    gh.factory<_i7.Factory<_i8.User, _i15.UserModelDto>>(
        () => _i17.UserModelDtoToChatUserMap());
    gh.factory<_i18.FetchChatRoomUseCase>(
        () => _i18.FetchChatRoomUseCase(gh<_i4.ChatService>()));
    gh.factory<_i19.FileRepository>(() => mintModule.fileRepository);
    gh.lazySingleton<_i20.FileRepositoryImpl>(() => _i20.FileRepositoryImpl());
    gh.factory<_i21.FileService>(() => mintModule.fileService);
    gh.factory<_i22.FileServiceImpl>(
        () => _i22.FileServiceImpl(gh<_i19.FileRepository>()));
    gh.lazySingleton<_i23.FirebaseInitializer>(
      () => _i24.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i23.FirebaseInitializer>(
      () => _i24.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i25.FirebaseStorageRepository>(
        () => _i25.FirebaseStorageRepository(gh<_i23.FirebaseInitializer>()));
    gh.lazySingleton<_i26.FirebaseUserRepository>(
      () => _i26.FirebaseWebUserRepository(
        gh<_i27.FirebaseInitializer>(),
        gh<_i7.Factory<Map<String, dynamic>, _i15.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.lazySingleton<_i26.FirebaseUserRepository>(
      () => _i26.FirebaseNativeUserRepository(
        gh<_i27.FirebaseInitializer>(),
        gh<_i7.Factory<Map<String, dynamic>, _i15.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i28.GetMessagesUseCase>(
        () => _i28.GetMessagesUseCase(gh<_i4.ChatService>()));
    gh.factory<_i29.LoadFileUseCase>(
        () => _i29.LoadFileUseCase(gh<_i21.FileService>()));
    gh.factory<_i30.OpenFileUseCase>(
        () => _i30.OpenFileUseCase(gh<_i21.FileService>()));
    gh.factory<_i31.PickFileUseCase>(
        () => _i31.PickFileUseCase(gh<_i21.FileService>()));
    gh.factory<_i32.PickImageUseCase>(
        () => _i32.PickImageUseCase(gh<_i21.FileService>()));
    gh.factory<_i33.PreviewDataFetchedUseCase>(
        () => _i33.PreviewDataFetchedUseCase(gh<_i4.ChatService>()));
    gh.factory<_i34.SaveAudioUseCase>(
        () => _i34.SaveAudioUseCase(gh<_i21.FileService>()));
    gh.factory<_i35.SendMessageUseCase>(
        () => _i35.SendMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i36.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i37.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i38.UserController<_i39.PatientUser?>>(
      () => _i38.UserControllerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i38.UserController<_i39.UserModel?>>(
      () => _i38.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.factory<_i40.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i41.UserService>(() => mintModule.userService);
    gh.factory<_i42.ChatBloc<_i15.UserModel?>>(() => _i42.ChatBlocBasic(
          gh<_i38.UserController<_i15.UserModel?>>(),
          gh<_i28.GetMessagesUseCase>(),
          gh<_i5.CreateChatRoomUseCase>(),
          gh<_i35.SendMessageUseCase>(),
          gh<_i6.DeleteMessageUseCase>(),
          gh<_i33.PreviewDataFetchedUseCase>(),
          gh<_i32.PickImageUseCase>(),
          gh<_i31.PickFileUseCase>(),
          gh<_i27.LoadFileUseCase>(),
          gh<_i30.OpenFileUseCase>(),
          gh<_i34.SaveAudioUseCase>(),
        ));
    gh.factory<_i42.ChatBlocPatient>(
      () => _i42.ChatBlocPatient(
        gh<_i38.UserController<_i15.PatientUser?>>(),
        gh<_i28.GetMessagesUseCase>(),
        gh<_i5.CreateChatRoomUseCase>(),
        gh<_i35.SendMessageUseCase>(),
        gh<_i6.DeleteMessageUseCase>(),
        gh<_i33.PreviewDataFetchedUseCase>(),
        gh<_i32.PickImageUseCase>(),
        gh<_i31.PickFileUseCase>(),
        gh<_i27.LoadFileUseCase>(),
        gh<_i30.OpenFileUseCase>(),
        gh<_i34.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i11.Factory<_i2.Future<_i39.UserModel>, _i43.UserModelDto>>(
      () => _i44.PatientUserFromDto(gh<_i37.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i11.Factory<_i2.Future<_i39.UserModel>, _i43.UserModelDto>>(
      () => _i44.UserModelFromDto(gh<_i37.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<
            _i11.Factory<_i2.Future<_i13.SpecialistModel>,
                _i12.SpecialistModelDto>>(
        () => _i45.SpecialistModelFromDto(gh<_i37.StorageService>()));
    gh.factory<_i11.Factory<_i2.Future<_i43.UserModelDto>, _i39.UserModel>>(
      () => _i46.UserModelToDto(gh<_i37.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i11.Factory<_i2.Future<_i43.UserModelDto>, _i39.UserModel>>(
      () => _i46.PatientUserToDto(gh<_i37.StorageService>()),
      registerFor: {_native},
    );
    gh.lazySingleton<_i47.FirebaseChatRepository>(
        () => _i47.FirebaseChatRepository(
              gh<_i27.FirebaseInitializer>(),
              gh<_i7.Factory<_i8.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i48.FirebaseChatService>(() => _i48.FirebaseChatService(
          gh<_i3.ChatRepository>(),
          gh<_i27.StorageService>(),
          gh<_i21.FileService>(),
          gh<_i7.Factory<_i8.Room?, Map<String, dynamic>>>(),
        ));
    gh.factory<_i49.FirebaseStorageService>(
        () => _i49.FirebaseStorageService(gh<_i36.StorageRepository>()));
    gh.factory<_i50.FirebaseUserService>(() => _i50.FirebaseUserService(
          gh<_i40.UserRepository>(),
          gh<_i7.Factory<_i2.Future<_i15.UserModel>, _i15.UserModelDto>>(),
          gh<_i7.Factory<_i2.Future<_i15.UserModelDto>, _i15.UserModel>>(),
        ));
  }
}

class _$MintModule extends _i51.MintModule {}
