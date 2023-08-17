


import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:food_planner/data/remote/crashlytics/Crashlytics.dart';

class CrashlyticsImpl implements Crashlytics
{

  FirebaseCrashlytics crashlytics ;

  CrashlyticsImpl({
    required this.crashlytics});

  @override
  void sendLogToCrashlytics(String error) async {
    print("new count state $error  from lytics");
    await crashlytics.recordError(
      "angry click",
      null,
      printDetails: true,
      reason: 'location: $error',
      fatal: true,
    );
  }


}