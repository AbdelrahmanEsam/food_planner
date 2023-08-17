import 'package:flutter/material.dart';
import 'package:food_planner/presentation/mainScreen/components/CircleImage.dart';

import '../../../constants/Strings.dart';
import '../../../constants/Theme.dart';
import '../../../domain/model/MealModel.dart';

final theme = MyTheme.light();

class MealOfTheDayCard extends StatefulWidget {
  final MealModel? specialDish ;

  const MealOfTheDayCard(
      {super.key,required this.specialDish});

  @override
  State<MealOfTheDayCard> createState() => _MealOfTheDayCardState();
}

class _MealOfTheDayCardState extends State<MealOfTheDayCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            textAlign: TextAlign.start,
            Strings.mealOfTheDay,
            style: theme.textTheme.displayLarge?.copyWith(
                fontStyle: FontStyle.normal,
                fontSize: 35,
                fontWeight: FontWeight.normal)),
        SizedBox(
          height: size.height * 0.02,
        ),
        IntrinsicHeight(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            textAlign: TextAlign.start,
                            widget.specialDish?.name ?? "",
                            style: theme.textTheme.displaySmall),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                            textAlign: TextAlign.start,
                            widget.specialDish?.ingredients ?? "",
                            style: theme.textTheme.displaySmall)
                      ]),
                ),
                Expanded(
                  child: CircleImage(imageUrl: widget.specialDish?.imageUrl ?? ""),
                ),
              ]),
        ),
      ],
    );
  }
}
