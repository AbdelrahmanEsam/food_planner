import 'dart:ffi';

import 'package:flutter/foundation.dart';

@immutable
abstract class MyFoodPlannerStates {
  final int count;
  final String dx;
  final String dy;

  const MyFoodPlannerStates(this.count, this.dx, this.dy);
}

class MyFoodPlannerInitialState extends MyFoodPlannerStates {
  const MyFoodPlannerInitialState({required int count}) : super(count, "", "");
}

class PlusCountState extends MyFoodPlannerStates {
  const PlusCountState(
      {required int count, required String dx, required String dy})
      : super(count, dx, dy);
}

class ResetAnalyticsState extends MyFoodPlannerStates {
  const ResetAnalyticsState() : super(0, "", "");
}
