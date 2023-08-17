import 'package:flutter/foundation.dart';

@immutable
abstract class MyFoodPlannerEvents {
  const MyFoodPlannerEvents();
}

class ResetMyFoodCounterEvent extends MyFoodPlannerEvents {
  const ResetMyFoodCounterEvent();
}

class AddOnMyFoodCounterEvent extends MyFoodPlannerEvents {
  final String dx;

  final String dy;

  const AddOnMyFoodCounterEvent(this.dx, this.dy);
}
