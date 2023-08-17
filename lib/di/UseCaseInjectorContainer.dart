import 'package:food_planner/domain/usecase/GetEgyptianMealsUseCase.dart';
import 'package:get_it/get_it.dart';

import '../domain/usecase/GetRandomMealUseCase.dart';

final getIt = GetIt.instance ;


Future<void> init() async
{
  getIt.registerFactory(() => GetEgyptianMealsUseCase(getIt()));
  getIt.registerFactory(() => GetRandomMealUseCase(getIt()));
}
