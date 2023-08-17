

import 'package:food_planner/presentation/mainScreen/bloc/Events.dart';
import 'package:food_planner/presentation/mainScreen/bloc/States.dart';
import 'package:bloc/bloc.dart';
import '../../../domain/usecase/GetEgyptianMealsUseCase.dart';
import '../../../domain/usecase/GetRandomMealUseCase.dart';

class MainScreenBloc extends Bloc<MainScreenEvents,MainScreenStates> {

  final GetRandomMealUseCase getRandomMealUseCase ;
  final GetEgyptianMealsUseCase getEgyptianMealsUseCase;
  MainScreenBloc({required this.getRandomMealUseCase, required this.getEgyptianMealsUseCase}) : super(const MainScreenInitialState(randomMeal: [], egyptianMeals: [])) {
    on<GetRandomMealEvent>(_getRandomMeal);
    on<GetEgyptianMealsEvent>(_getEgyptianMeals);
  }


  void _getRandomMeal(GetRandomMealEvent event,
      Emitter<MainScreenStates> emit)  async {
    print("myRandomMeal غثس");
    var randomMeal = await getRandomMealUseCase.execute();
    print("myRandomMeal ق ${randomMeal?.first.toString()}");
    emit(MainScreenRandomMealUpdated(
        egyptianMeals: state.egyptianMeals, randomMeal: randomMeal ?? []));
  }


  void _getEgyptianMeals(GetEgyptianMealsEvent event,
      Emitter<MainScreenStates> emit) async {
    var egyptianMeals = await getEgyptianMealsUseCase.execute();
    emit(MainScreenEgyptianMealsUpdated(
        egyptianMeals: egyptianMeals ?? [], randomMeal: state.randomMeal));
  }

}