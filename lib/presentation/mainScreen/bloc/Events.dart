import 'package:flutter/foundation.dart';

import '../../../domain/model/MealModel.dart';
import '../../../domain/usecase/GetRandomMealUseCase.dart';

@immutable
abstract class MainScreenEvents {
  const MainScreenEvents();
}

class GetRandomMealEvent extends MainScreenEvents {
  const GetRandomMealEvent();
}

class GetEgyptianMealsEvent extends MainScreenEvents {
  const GetEgyptianMealsEvent();
}
