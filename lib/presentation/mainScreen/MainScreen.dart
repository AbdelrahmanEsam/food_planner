import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_planner/constants/Colors.dart';
import 'package:food_planner/presentation/mainScreen/bloc/Events.dart';
import 'package:food_planner/presentation/mainScreen/components/MealsListView.dart';
import '../../constants/Strings.dart';
import '../../constants/Theme.dart';
import '../../domain/model/MealModel.dart';
import 'bloc/MainScreenBloc.dart';
import 'bloc/States.dart';
import 'components/CircleImage.dart';
import 'components/Header.dart';
import 'components/MealOfTheDayCard.dart';
import 'components/SearchYourMeal.dart';
import 'package:food_planner/di/BlocInjectorContainer.dart' as bloc_di;

final theme = MyTheme.light();

class MainScreen extends StatefulWidget {

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MealModel> meals = [];

  MealModel? specialDish;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => bloc_di.getIt<MainScreenBloc>()
        ..add(const GetRandomMealEvent())
        ..add(const GetEgyptianMealsEvent()),
        child: BlocBuilder<MainScreenBloc, MainScreenStates>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: (size.height * 0.01)),
                  const Header(),
                  SizedBox(height: (size.height * 0.03)),
                  const SearchYourMealTextField(),
                  SizedBox(height: (size.height * 0.03)),
                  MealOfTheDayCard(specialDish: state.randomMeal.firstOrNull),
                  SizedBox(height: (size.height * 0.05)),
                  Text(Strings.mealsForYou,
                      style: theme.textTheme.displayMedium),
                  SizedBox(height: (size.height * 0.05)),
                  MealsListView(meals: state.egyptianMeals)
                ],
              ),
            );
          },
        ),
    );
  }
}
