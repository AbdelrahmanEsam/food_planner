
import 'package:food_planner/domain/model/MealModel.dart';

abstract class Repository
{
  Future<List<MealModel>?> getOneRandomMeal();
  Future<List<MealModel>?> getEgyptianMeals();
}