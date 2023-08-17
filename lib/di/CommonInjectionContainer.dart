

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance ;


Future<void> init() async
{
  getIt.registerLazySingleton(() =>  FirebaseCrashlytics.instance);
}
