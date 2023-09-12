import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

const native = Environment('native');
const web = Environment('web');

final getIt = GetIt.instance;

@InjectableInit.microPackage(preferRelativeImports: true)
void initMicroPackage(){}
