//@GeneratedMicroModule;MintCorePackageModule;package:mint_core/src/injector/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;

import '../../mint_assembly.dart' as _i7;
import '../../mint_core.dart' as _i8;
import '../assembly/entity/specialist_model_from_dto.dart' as _i18;
import '../assembly/entity/user_model_from_dto.dart' as _i21;
import '../assembly/factory.dart' as _i3;
import '../assembly/model/specialist_model_to_dto.dart' as _i6;
import '../assembly/model/user_model_to_dto.dart' as _i22;
import '../assembly/modified_user_dto_to_map.dart' as _i9;
import '../data/model/specialist_model_dto/specialist_model_dto.dart' as _i4;
import '../data/model/user_model_dto/user_model_dto.dart' as _i20;
import '../data/repository/abstract/firebase_initializer.dart' as _i10;
import '../data/repository/abstract/storage_repository.dart' as _i14;
import '../data/repository/abstract/user_repository.dart' as _i16;
import '../data/repository/firebase/firebase_initializer_impl.dart' as _i11;
import '../data/repository/firebase/firebase_storage_repository.dart' as _i12;
import '../data/repository/firebase/firebase_user_repository.dart' as _i13;
import '../domain/entity/specialist_model/specialist_model.dart' as _i5;
import '../domain/entity/user_model/user_model.dart' as _i19;
import '../domain/service/abstract/storage_service.dart' as _i15;
import '../domain/service/abstract/user_service.dart' as _i17;
import '../domain/service/firebase/firebase_storage_service.dart' as _i23;
import '../domain/service/firebase/firebase_user_service.dart' as _i24;
import '../module/mint_module.dart' as _i25;

const String _native = 'native';
const String _web = 'web';

class MintCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final mintModule = _$MintModule();
    gh.factory<_i3.Factory<_i4.SpecialistModelDto, _i5.SpecialistModel>>(
        () => _i6.SpecialistModelToDto());
    gh.factory<_i7.Factory<Map<String, dynamic>, _i8.UserModelDto>>(
        () => _i9.ModifiedUserDtoToMap());
    gh.lazySingleton<_i10.FirebaseInitializer>(
      () => _i11.FirebaseInitializerNative(),
      registerFor: {_native},
    );
    gh.lazySingleton<_i10.FirebaseInitializer>(
      () => _i11.FirebaseInitializerWeb(),
      registerFor: {_web},
    );
    gh.lazySingleton<_i12.FirebaseStorageRepository>(
        () => _i12.FirebaseStorageRepository(gh<_i10.FirebaseInitializer>()));
    gh.lazySingleton<_i13.FirebaseUserRepository>(
        () => _i13.FirebaseUserRepository(
              gh<_i10.FirebaseInitializer>(),
              gh<_i7.Factory<Map<String, dynamic>, _i8.UserModelDto>>(),
            ));
    gh.factory<_i14.StorageRepository>(() => mintModule.storageRepository);
    gh.factory<_i15.StorageService>(() => mintModule.storageService);
    gh.factory<_i16.UserRepository>(() => mintModule.userRepository);
    gh.factory<_i17.UserService>(() => mintModule.userService);
    gh.factory<
            _i3
            .Factory<_i2.Future<_i5.SpecialistModel>, _i4.SpecialistModelDto>>(
        () => _i18.SpecialistModelFromDto(gh<_i15.StorageService>()));
    gh.factory<_i3.Factory<_i2.Future<_i19.UserModel>, _i20.UserModelDto>>(
      () => _i21.UserModelFromDto(gh<_i15.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i3.Factory<_i2.Future<_i19.UserModel>, _i20.UserModelDto>>(
      () => _i21.PatientUserFromDto(gh<_i15.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i3.Factory<_i2.Future<_i20.UserModelDto>, _i19.UserModel>>(
      () => _i22.UserModelToDto(gh<_i15.StorageService>()),
      registerFor: {_web},
    );
    gh.factory<_i3.Factory<_i2.Future<_i20.UserModelDto>, _i19.UserModel>>(
      () => _i22.PatientUserToDto(gh<_i15.StorageService>()),
      registerFor: {_native},
    );
    gh.factory<_i23.FirebaseStorageService>(
        () => _i23.FirebaseStorageService(gh<_i14.StorageRepository>()));
    gh.factory<_i24.FirebaseUserService>(() => _i24.FirebaseUserService(
          gh<_i16.UserRepository>(),
          gh<_i7.Factory<_i2.Future<_i8.UserModel>, _i8.UserModelDto>>(),
          gh<_i7.Factory<_i2.Future<_i8.UserModelDto>, _i8.UserModel>>(),
        ));
  }
}

class _$MintModule extends _i25.MintModule {}
