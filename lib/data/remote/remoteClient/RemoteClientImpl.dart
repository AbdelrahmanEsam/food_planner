
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_planner/data/dto/EgyptianMealsResponse.dart';
import 'package:food_planner/data/dto/RandomMealResponse.dart';
import 'package:food_planner/data/remote/RemoteClient/RemoteClient.dart';
import '../../../constants/Constants.dart';
import '../networkService/NetworkService.dart';

class RemoteClientImpl implements RemoteClient {

  NetworkService networkService ;
  FirebaseCrashlytics crashlytics ;
  
  RemoteClientImpl({
  required this.networkService,required this.crashlytics});
  
  @override
  Future<RandomMealResponse?> getOneRandomMeal() async {
   var response = await networkService.get(RANDOM_URL,<String, String>{});
   print("myRandomMealData ${response?.data}");
    return RandomMealResponse.fromJson(response?.data);
  }



  @override
  Future<EgyptianMealsResponse?> getEgyptianMeals() async {
    var response = await networkService.get(Egyptian_Food,<String, String>{});
    print("myEgyptianMeal ${await networkService.get(Egyptian_Food,<String, String>{})}");
    return EgyptianMealsResponse.fromJson(response?.data);
  }

  @override
  void sendLogToCrashLytics({required String dx, required String dy, required String time})  async {
     await crashlytics.recordError(
      "angry click",
       null,
       printDetails: true,
       reason: 'location: $dx $dy $time',
       fatal: true,
     );
  }



}
