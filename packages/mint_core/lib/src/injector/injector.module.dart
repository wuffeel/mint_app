//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:flutter_chat_types/flutter_chat_types.dart' as _i11;
import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i7;
import '../../mint_core.dart' as _i21;
import '../../mint_module.dart' as _i35;
import '../assembly/entity/chat_room_from_map.dart' as _i12;
import '../assembly/entity/chat_user_data_from_map.dart' as _i13;
import '../assembly/entity/specialist_model_from_dto.dart' as _i53;
import '../assembly/entity/user_model_from_dto.dart' as _i52;
import '../assembly/entity/user_presence_from_dto.dart' as _i10;
import '../assembly/factory.dart' as _i14;
import '../assembly/model/specialist_model_to_dto.dart' as _i17;
import '../assembly/model/user_model_dto_to_chat_user.dart' as _i22;
import '../assembly/model/user_model_to_dto.dart' as _i20;
import '../assembly/modified_user_dto_to_map.dart' as _i23;
import '../bloc/chat/chat_bloc.dart' as _i51;
import '../bloc/presence_message/presence_message_bloc.dart' as _i42;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i15;
import '../data/model/user_model_dto/user_model_dto.dart' as _i18;
import '../data/model/user_presence_dto/user_presence_dto.dart' as _i9;
import '../data/repository/abstract/chat_repository.dart' as _i3;
import '../data/repository/abstract/file_repository.dart' as _i26;
import '../data/repository/abstract/firebase_initializer.dart' as _i31;
import '../data/repository/abstract/storage_repository.dart' as _i46;
import '../data/repository/abstract/user_repository.dart' as _i49;
import '../data/repository/file_repository_native.dart' as _i27;
import '../data/repository/file_repository_web.dart' as _i28;
import '../data/repository/firebase/firebase_chat_repository.dart' as _i54;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i32;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i33;
import '../data/repository/firebase/firebase_user_repository.dart' as _i34;
import '../domain/controller/user_controller.dart' as _i48;
import '../domain/entity/specialist_model/specialist_model.dart' as _i16;
import '../domain/entity/user_model/user_model.dart' as _i19;
import '../domain/entity/user_presence/user_presence.dart' as _i8;
import '../domain/service/abstract/chat_service.dart' as _i4;
import '../domain/service/abstract/file_service.dart' as _i29;
import '../domain/service/abstract/storage_service.dart' as _i47;
import '../domain/service/abstract/user_service.dart' as _i50;
import '../domain/service/file_service_impl.dart' as _i30;
import '../domain/service/firebase/firebase_chat_service.dart' as _i55;
import '../domain/service/firebase/firebase_storage_service.dart' as _i56;
import '../domain/service/firebase/firebase_user_service.dart' as _i57;
import '../domain/use_case/create_chat_room_use_case.dart' as _i5;
import '../domain/use_case/delete_message_use_case.dart' as _i6;
import '../domain/use_case/fetch_chat_room_use_case.dart' as _i24;
import '../domain/use_case/fetch_unread_messages_count_use_case.dart' as _i25;
import '../domain/use_case/get_messages_use_case.dart' as _i36;
import '../domain/use_case/get_user_presence_use_case.dart' as _i58;
import '../domain/use_case/initialize_user_presence_use_case.dart' as _i59;
import '../domain/use_case/load_file_use_case.dart' as _i37;
import '../domain/use_case/message_mark_as_read_use_case.dart' as _i38;
import '../domain/use_case/open_file_use_case.dart' as _i39;
import '../domain/use_case/pick_file_use_case.dart' as _i40;
import '../domain/use_case/pick_image_use_case.dart' as _i41;
import '../domain/use_case/preview_data_fetched_use_case.dart' as _i43;
import '../domain/use_case/save_audio_use_case.dart' as _i44;
import '../domain/use_case/send_message_use_case.dart' as _i45;
import '../module/mint_module.dart' as _i60;

const String _web = 'web';
const String _native = 'native';

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
    gh.factory<_i7.Factory<_i8.UserPresence, _i9.UserPresenceDto>>(
        () => _i10.UserPresenceFromDto());
    gh.factory<_i7.Factory<_i11.Room?, Map<String, dynamic>>>(
        () => _i12.ChatRoomFromMap());
    gh.factory<_i7.Factory<_i11.User, Map<String, dynamic>>>(
        () => _i13.ChatUserDataFromMap());
    gh.factory<_i14.Factory<_i15.SpecialistModelDto, _i16.SpecialistModel>>(
        () => _i17.SpecialistModelToDto());
    gh.factory<_i14.Factory<_i18.UserModelDto, _i19.UserModel>>(
      () => _i20.UserModelToDto(),
      registerFor: {_web},
    );
    gh.factory<_i14.Factory<_i18.UserModelDto, _i19.UserModel>>(
      () => _i20.PatientUserToDto(),
      registerFor: {_native},
    );
    gh.factory<_i7.Factory<_i11.User, _i21.UserModelDto>>(
        () => _i22.UserModelDtoToChatUserMap());
    gh.factory<_i7.Factory<Map<String, dynamic>, _i21.UserModelDto>>(
        () => _i23.ModifiedUserDtoToMap());
    gh.factory<_i24.FetchChatRoomUseCase>(
        () => _i24.FetchChatRoomUseCase(gh<_i4.ChatService>()));
    gh.factory<_i25.FetchUnreadMessagesCountUseCase>(
        () => _i25.FetchUnreadMessagesCountUseCase(gh<_i4.ChatService>()));
    gh.lazySingleton<_i26.FileRepository>(
      () => _i27.FileRepositoryNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i26.FileRepository>(
      () => _i28.FileRepositoryWeb(),
      registerFor: {_web},
    );
    gh.factory<_i29.FileService>(() => mintModule.fileService);
    gh.factory<_i30.FileServiceImpl>(
        () => _i30.FileServiceImpl(gh<_i26.FileRepository>()));
    gh.lazySingleton<_i31.FirebaseInitializer>(
      () => _i32.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i31.FirebaseInitializer>(
      () => _i32.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i33.FirebaseStorageRepository>(
        () => _i33.FirebaseStorageRepository(gh<_i31.FirebaseInitializer>()));
    gh.lazySingleton<_i34.FirebaseUserRepository>(
      () => _i34.FirebaseNativeUserRepository(
        gh<_i35.FirebaseInitializer>(),
        gh<_i7.Factory<Map<String, dynamic>, _i21.UserModelDto>>(),
      ),
      registerFor: {_native},
    );
    gh.lazySingleton<_i34.FirebaseUserRepository>(
      () => _i34.FirebaseWebUserRepository(
        gh<_i35.FirebaseInitializer>(),
        gh<_i7.Factory<Map<String, dynamic>, _i21.UserModelDto>>(),
      ),
      registerFor: {_web},
    );
    gh.factory<_i36.GetMessagesUseCase>(
        () => _i36.GetMessagesUseCase(gh<_i4.ChatService>()));
    gh.factory<_i37.LoadFileUseCase>(
        () => _i37.LoadFileUseCase(gh<_i29.FileService>()));
    gh.factory<_i38.MessageMarkAsReadUseCase>(
        () => _i38.MessageMarkAsReadUseCase(gh<_i4.ChatService>()));
    gh.factory<_i39.OpenFileUseCase>(
        () => _i39.OpenFileUseCase(gh<_i29.FileService>()));
    gh.factory<_i40.PickFileUseCase>(
        () => _i40.PickFileUseCase(gh<_i29.FileService>()));
    gh.factory<_i41.PickImageUseCase>(
        () => _i41.PickImageUseCase(gh<_i29.FileService>()));
    gh.factory<_i42.PresenceMessageBloc>(
        () => _i42.PresenceMessageBloc(gh<_i38.MessageMarkAsReadUseCase>()));
    gh.factory<_i43.PreviewDataFetchedUseCase>(
        () => _i43.PreviewDataFetchedUseCase(gh<_i4.ChatService>()));
    gh.factory<_i44.SaveAudioUseCase>(
        () => _i44.SaveAudioUseCase(gh<_i29.FileService>()));
    gh.factory<_i45.SendMessageUseCase>(
        () => _i45.SendMessageUseCase(gh<_i4.ChatService>()));
    gh.factory<_i46.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i47.StorageService>(() => mintModule.storageService);
    gh.lazySingleton<_i48.UserController<_i19.UserModel?>>(
      () => _i48.UserControllerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i48.UserController<_i19.PatientUser?>>(
      () => _i48.UserControllerNative(),
      registerFor: {_native},
    );
    gh.factory<_i49.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i50.UserService>(() => mintModule.userService);
    gh.factory<_i51.ChatBloc<_i21.UserModel?>>(() => _i51.ChatBlocBasic(
          gh<_i48.UserController<_i21.UserModel?>>(),
          gh<_i36.GetMessagesUseCase>(),
          gh<_i5.CreateChatRoomUseCase>(),
          gh<_i45.SendMessageUseCase>(),
          gh<_i6.DeleteMessageUseCase>(),
          gh<_i43.PreviewDataFetchedUseCase>(),
          gh<_i41.PickImageUseCase>(),
          gh<_i40.PickFileUseCase>(),
          gh<_i35.LoadFileUseCase>(),
          gh<_i39.OpenFileUseCase>(),
          gh<_i44.SaveAudioUseCase>(),
        ));
    gh.factory<_i51.ChatBlocPatient>(
      () => _i51.ChatBlocPatient(
        gh<_i48.UserController<_i21.PatientUser?>>(),
        gh<_i36.GetMessagesUseCase>(),
        gh<_i5.CreateChatRoomUseCase>(),
        gh<_i45.SendMessageUseCase>(),
        gh<_i6.DeleteMessageUseCase>(),
        gh<_i43.PreviewDataFetchedUseCase>(),
        gh<_i41.PickImageUseCase>(),
        gh<_i40.PickFileUseCase>(),
        gh<_i35.LoadFileUseCase>(),
        gh<_i39.OpenFileUseCase>(),
        gh<_i44.SaveAudioUseCase>(),
      ),
      registerFor: {_native},
    );
    gh.factory<_i14.Factory<_i2.Future<_i19.UserModel>, _i18.UserModelDto>>(
      () => _i52.PatientUserFromDto(gh<_i47.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i14.Factory<_i2.Future<_i19.UserModel>, _i18.UserModelDto>>(
      () => _i52.UserModelFromDto(gh<_i47.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<
            _i14.Factory<_i2.Future<_i16.SpecialistModel>,
                _i15.SpecialistModelDto>>(
        () => _i53.SpecialistModelFromDto(gh<_i47.StorageService>()));
    gh.lazySingleton<_i54.FirebaseChatRepository>(
        () => _i54.FirebaseChatRepository(
              gh<_i35.FirebaseInitializer>(),
              gh<_i7.Factory<_i11.User, Map<String, dynamic>>>(),
            ));
    gh.factory<_i55.FirebaseChatService>(() => _i55.FirebaseChatService(
          gh<_i3.ChatRepository>(),
          gh<_i35.StorageService>(),
          gh<_i29.FileService>(),
          gh<_i7.Factory<_i11.Room?, Map<String, dynamic>>>(),
        ));
    gh.factory<_i56.FirebaseStorageService>(
        () => _i56.FirebaseStorageService(gh<_i46.StorageRepository>()));
    gh.factory<_i57.FirebaseUserService>(() => _i57.FirebaseUserService(
          gh<_i35.UserRepository>(),
          gh<_i35.StorageService>(),
          gh<_i7.Factory<_i2.Future<_i21.UserModel>, _i21.UserModelDto>>(),
          gh<_i7.Factory<_i21.UserModelDto, _i21.UserModel>>(),
          gh<_i7.Factory<_i21.UserPresence, _i9.UserPresenceDto>>(),
        ));
    gh.factory<_i58.GetUserPresenceUseCase>(
        () => _i58.GetUserPresenceUseCase(gh<_i50.UserService>()));
    gh.factory<_i59.InitializeUserPresenceUseCase>(
        () => _i59.InitializeUserPresenceUseCase(gh<_i50.UserService>()));
  }
}

class _$MintModule extends _i60.MintModule {}
