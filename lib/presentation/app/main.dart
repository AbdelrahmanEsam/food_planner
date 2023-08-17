import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_planner/presentation/app/bloc/Events.dart';
import 'package:food_planner/presentation/app/bloc/States.dart';
import 'package:food_planner/presentation/mainScreen/MainScreen.dart';
import '../../constants/Strings.dart';
import '../../constants/Theme.dart';

import '../../di/BlocInjectorContainer.dart' as bloc_di;
import '../../di/CommonInjectionContainer.dart' as common_di;
import '../../di/RemoteInjectorContainer.dart' as remote_di;
import '../../di/RepositoryInjectorContainer.dart' as repository_di;
import '../../di/UseCaseInjectorContainer.dart' as usecase_di;
import 'bloc/FoodPlannerBloc.dart';

final theme = MyTheme.light();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await common_di.init();
  await remote_di.init();
  await repository_di.init();
  await usecase_di.init();
  await bloc_di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) => bloc_di.getIt<FoodPlannerBloc>(),
        child: BlocBuilder<FoodPlannerBloc, MyFoodPlannerStates>(
            builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Strings.appTitle,
            theme: theme,
            home: const MyHomePage(),
          );

        }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Timer.periodic(const Duration(seconds: 1), (Timer t) => BlocProvider.of<FoodPlannerBloc>(context).add(const ResetMyFoodCounterEvent()));
    return Scaffold(
      appBar: null,
      body: Listener(
        behavior: HitTestBehavior.opaque,
        onPointerDown : (event){
          onAdd(context, event.localPosition.dx.toString(), event.localPosition.dy.toString());
          },
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                left: size.width * 0.03, right: size.width * 0.03),
            child: MainScreen(),
          ),
        ),
      ),
      floatingActionButton: null,
    );
  }
}

onAdd(BuildContext context,String dx , String dy)
{
  BlocProvider.of<FoodPlannerBloc>(context).add(AddOnMyFoodCounterEvent(dx,dy));
}
