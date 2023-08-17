import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_planner/presentation/app/bloc/Events.dart';
import 'package:food_planner/presentation/app/bloc/States.dart';

class FoodPlannerBloc extends Bloc<MyFoodPlannerEvents, MyFoodPlannerStates> {
  FoodPlannerBloc() : super(const MyFoodPlannerInitialState(count: 0)) {
    on<ResetMyFoodCounterEvent>(_resetMyCounter);
    on<AddOnMyFoodCounterEvent>(_addOneToMyCounter);
  }



  void _resetMyCounter(
      ResetMyFoodCounterEvent event, Emitter<MyFoodPlannerStates> emit) async {

    emit(const ResetAnalyticsState());

  }

  void _addOneToMyCounter(
      AddOnMyFoodCounterEvent event, Emitter<MyFoodPlannerStates> emit) async {
    emit(PlusCountState(count: state.count + 1,dx: event.dx,dy : event.dy));
    if (state.count == 3) {
      print("new count state ${state.count} ${event.dx} ${event.dy}");
    }
  }
}
