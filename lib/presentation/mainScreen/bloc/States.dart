import 'package:flutter/foundation.dart';

import '../../../domain/model/MealModel.dart';

@immutable
abstract class MainScreenStates {
  final List<MealModel> randomMeal;
  final List<MealModel> egyptianMeals;

  const MainScreenStates(this.randomMeal, this.egyptianMeals);
}

class MainScreenInitialState extends MainScreenStates {
  const MainScreenInitialState(
      {required List<MealModel> randomMeal,
      required List<MealModel> egyptianMeals})
      : super(randomMeal, egyptianMeals);
}

class MainScreenRandomMealUpdated extends MainScreenStates {
  const MainScreenRandomMealUpdated(
      {required List<MealModel> randomMeal,
      required List<MealModel> egyptianMeals})
      : super(randomMeal, egyptianMeals);
}

class MainScreenEgyptianMealsUpdated extends MainScreenStates {
  const MainScreenEgyptianMealsUpdated(
      {required List<MealModel> randomMeal,
      required List<MealModel> egyptianMeals})
      : super(randomMeal, egyptianMeals);
}
