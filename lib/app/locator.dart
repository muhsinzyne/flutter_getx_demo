import 'package:demo/services/base/app_info.dart';
import 'package:demo/services/base/app_info_factory.dart';
import 'package:demo/services/base/app_info_lazy.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() async {
  // register as factory
  locator.registerFactory(() => AppInfoFactory());
  // register as Lazy singleton
  locator.registerLazySingleton(() => AppInfoLazy());
  // register as singleton
  //locator.registerSingleton(() => AppInfo());
}
