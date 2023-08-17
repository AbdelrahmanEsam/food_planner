
import 'package:dio/dio.dart';
import 'package:food_planner/data/dto/EgyptianMealsResponse.dart';

import '../../dto/RandomMealResponse.dart';

abstract class RemoteClient{

  Future<RandomMealResponse?> getOneRandomMeal();
  Future<EgyptianMealsResponse?> getEgyptianMeals();

}