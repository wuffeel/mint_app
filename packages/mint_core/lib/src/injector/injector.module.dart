//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i10;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i7;
import '../../mint_core.dart' as _i8;
import '../../mint_module.dart' as _i41;
import '../assembly/entity/chat_room_from_map.dart' as _i12;
import '../assembly/entity/chat_user_data_from_map.dart' as _i11;
import '../assembly/entity/specialist_model_from_dto.dart' as _i45;
import '../assembly/entity/user_model_from_dto.dart' as _i44;
import '../assembly/factory.dart' as _i13;
import '../assembly/model/specialist_model_to_dto.dart' as _i16;
import '../assembly/model/user_model_to_dto.dart' as _i43;
import '../assembly/modified_user_dto_to_map.dart' as _i9;
import '../bloc/chat/chat_bloc.dart' as _i40;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i14;
import '../data/model/user_model_dto/user_model_dto.dart' as _i42;
import '../data/repository/abstract/chat_repository.dart' as _i3;
import '../data/repository/abstract/file_repository.dart' as _i18;
import '../data/repository/abstract/firebase_initializer.dart' as _i22;
import '../data/repository/abstract/storage_repository.dart' as _i34;
import '../data/repository/abstract/user_repository.dart' as _i38;
import '../data/repository/file_repository_impl.dart' as _i19;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i46;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i23;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i24;
import '../data/repository/firebase/firebase_user_repository.dart' as _i25;
import '../domain/controller/user_controller.dart' as _i36;
import '../domain/entity/specialist_model/specialist_model.dart' as _i15;
import '../domain/entity/user_model/user_model.dart' as _i37;
import '../domain/service/abstract/chat_service.dart' as _i4;
import '../domain/service/abstract/file_service.dart' as _i20;
import '../domain/service/abstract/storage_service.dart' as _i35;
import '../domain/service/abstract/user_service.dart' as _i39;
import '../domain/service/file_service_impl.dart' as _i21;
import '../domain/service/firebase/firebase_chat_service.dart' as _i47;
import '../domain/service/firebase/firebase_storage_service.dart' as _i48;
import '../domain/service/firebase/firebase_user_service.dart' as _i49;
import '../domain/use_case/create_chat_room_use_case.dart' as _i5;
import '../domain/use_case/delete_message_use_case.dart' as _i6;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i17;
import '../domain/use_case/get_messages_use_case.dart' as _i26;
import '../domain/use_case/load_file_use_case.dart' as _i27;
import '../domain/use_case/open_file_use_case.dart' as _i28;
import '../domain/use_case/pick_file_use_case.dart' as _i29;
import '../domain/use_case/pick_image_use_case.dart' as _i30;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i31;
import '../domain/use_case/save_audio_use_case.dart' as _i32;
import '../domain/use_case/send_message_use_case.dart' as _i33;
import '../module/mint_module.dart' as _i50;

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
    gh.factory<_i7.Factory<Map<String, dynamic>, _i8.UserModelDto>>(
        () => _i9.ModifiedUserDtoToMap());
    gh.factory<_i7.Factory<_i10.User, Map<String, dynamic>>>(
        () => _i11.ChatUserDataFromMap());
    gh.factory<_i7.Factory<_i10.Room?, Map<String, dynamic>>>(
        () => _i12.ChatRoomFromMap());
    gh.factory<_i13.Factory<_i14.SpecialistModelDto, _i15.SpecialistModel>>(
        () => _i16.SpecialistModelToDto());
    gh.factory<_i17.FetchChatRoomUseCase>(
        () => _i17.FetchChatRoomUseCase(gh<_i4.ChatService>()));
    gh.factory<_i18.FileRepository>(() => mintModule.fileRepository);
    gh.lazySingleton<_i19.FileRepositoryImpl>(() => _i19.FileRepositoryImpl());
    gh.factory<_i20.FileService>(() => mintModule.fileService);
    gh.factory<_i21.FileServiceImpl>(
        () => _i21.FileServiceImpl(gh<_i18.FileRepository>()));
    gh.lazySingleton<_i22.FirebaseInitializer>(
      () => _i23.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i22.FirebaseInitializer>(
      () => _i23.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i24.FirebaseStorageRepository>(
        () => _i24.FirebaseStorageRepository(gh<_i22.FirebaseInitializer>()));
    gh.lazySingleton<_i25.FirebaseUserRepository>(
        () => _i25.FirebaseUserRepository(
              gh<_i22.FirebaseInitializer>(),
              gh<_i7.Factory<Map<String, dynamic>, _i8.UserModelDto>>(),
            ));
    gh.factory<_i26.GetMessagesUseCase>(
        () => _i26.GetMessagesUseCase(gh<_i4.ChatService>()));
    gh.factory<_i27.LoadFileUseCase>(
        () => _i27.LoadFileUseCase(gh<_i20.FileService>()));
    gh.factory<_i28.OpenFileUseCase>(
        () => _i28.OpenFileUseCase(gh<_i20.FileService>()));
    gh.factory<_i29.PickFileUseCase>(
        () => _i29.PickFileUseCase(gh<_i20.FileService>()));
    gh.factory<_i30.PickImageUseCase>(
        () => _i30.PickImageUseCase(gh<_i20.FileService>()));
    gh.factory<_i31.PreviewDataFetchedUseCase>(
        () => _i31.PreviewDataFetchedUseCase(gh<_i4.ChatService>()));
    gh.factory<_i32.SaveAudioUseCase>(
        () => _i32.SaveAudioUseCase(gh<_i20.FileService>()));
    gh.factory<_i33.SendMessageUseCase>(
        () => _i33.SendMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i34.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i35.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i36.UserController<_i37.PatientUser?>>(
      () => _i36.UserControllerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i36.UserController<_i37.UserModel?>>(
      () => _i36.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.factory<_i38.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i39.UserService>(() => mintModule.userService);
    gh.factory<_i40.ChatBloc<_i8.UserModel?>>(() => _i40.ChatBlocBasic(
          gh<_i36.UserController<_i8.UserModel?>>(),
          gh<_i26.GetMessagesUseCase>(),
          gh<_i5.CreateChatRoomUseCase>(),
          gh<_i33.SendMessageUseCase>(),
          gh<_i6.DeleteMessageUseCase>(),
          gh<_i31.PreviewDataFetchedUseCase>(),
          gh<_i30.PickImageUseCase>(),
          gh<_i29.PickFileUseCase>(),
          gh<_i41.LoadFileUseCase>(),
          gh<_i28.OpenFileUseCase>(),
          gh<_i32.SaveAudioUseCase>(),
        ));
    gh.factory<_i40.ChatBlocPatient>(
      () => _i40.ChatBlocPatient(
        gh<_i36.UserController<_i8.PatientUser?>>(),
        gh<_i26.GetMessagesUseCase>(),
        gh<_i5.CreateChatRoomUseCase>(),
        gh<_i33.SendMessageUseCase>(),
        gh<_i6.DeleteMessageUseCase>(),
        gh<_i31.PreviewDataFetchedUseCase>(),
        gh<_i30.PickImageUseCase>(),
        gh<_i29.PickFileUseCase>(),
        gh<_i41.LoadFileUseCase>(),
        gh<_i28.OpenFileUseCase>(),
        gh<_i32.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i13.Factory<_i2.Future<_i42.UserModelDto>, _i37.UserModel>>(
      () => _i43.PatientUserToDto(gh<_i35.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i13.Factory<_i2.Future<_i42.UserModelDto>, _i37.UserModel>>(
      () => _i43.UserModelToDto(gh<_i35.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i13.Factory<_i2.Future<_i37.UserModel>, _i42.UserModelDto>>(
      () => _i44.PatientUserFromDto(gh<_i35.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<
            _i13.Factory<_i2.Future<_i15.SpecialistModel>,
                _i14.SpecialistModelDto>>(
        () => _i45.SpecialistModelFromDto(gh<_i35.StorageService>()));
    gh.factory<_i13.Factory<_i2.Future<_i37.UserModel>, _i42.UserModelDto>>(
      () => _i44.UserModelFromDto(gh<_i35.StorageService>()),
      registerFor: {_web},
    );
    gh.lazySingleton<_i46.FirebaseChatRepository>(
        () => _i46.FirebaseChatRepository(
              gh<_i41.FirebaseInitializer>(),
              gh<_i7.Factory<_i10.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i47.FirebaseChatService>(() => _i47.FirebaseChatService(
          gh<_i3.ChatRepository>(),
          gh<_i41.StorageService>(),
          gh<_i20.FileService>(),
          gh<_i7.Factory<_i10.Room?, Map<String, dynamic>>>(),
        ));
    gh.factory<_i48.FirebaseStorageService>(
        () => _i48.FirebaseStorageService(gh<_i34.StorageRepository>()));
    gh.factory<_i49.FirebaseUserService>(() => _i49.FirebaseUserService(
          gh<_i38.UserRepository>(),
          gh<_i7.Factory<_i2.Future<_i8.UserModel>, _i8.UserModelDto>>(),
          gh<_i7.Factory<_i2.Future<_i8.UserModelDto>, _i8.UserModel>>(),
        ));
  }
}

class _$MintModule extends _i50.MintModule {}
