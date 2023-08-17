import 'package:food_planner/data/dto/EgyptianMealsResponse.dart';
import 'package:food_planner/data/dto/Meals.dart';
import 'package:food_planner/data/dto/RandomMealResponse.dart';
import 'package:food_planner/domain/model/MealModel.dart';

extension ToMealModel on Meals
{
  MealModel toMealModel()
  {
    return MealModel(name: strMeal ?? "", ingredients: strIngredient1 ?? " $strIngredient2" ?? ""
        , imageUrl: strMealThumb ?? "");
  }
}


extension RandomMealToMealModel on RandomMealResponse
{
  List<MealModel>? toMealModel()
  {

    return meals?.map((meal) =>  meal.toMealModel()).toList();
  }
}

extension EgyptianMealsToListOfMealModel on EgyptianMealsResponse
{
  List<MealModel>? toMealModel()
  {

    return meals.map((meal) =>  meal.toMealModel()).toList();
  }
}