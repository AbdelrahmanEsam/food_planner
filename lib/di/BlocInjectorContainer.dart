import 'package:food_planner/presentation/mainScreen/bloc/MainScreenBloc.dart';
import 'package:get_it/get_it.dart';

import '../presentation/app/bloc/FoodPlannerBloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => MainScreenBloc(
      getRandomMealUseCase: getIt(), getEgyptianMealsUseCase: getIt()));

  getIt.registerFactory(() => FoodPlannerBloc(sendLogToCrashlyticsUseCase: getIt()));
}
