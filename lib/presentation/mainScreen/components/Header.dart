import 'package:flutter/material.dart';
import 'package:food_planner/constants/Strings.dart';

import '../../../constants/Theme.dart';

final theme = MyTheme.light();

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(Strings.goodMorning,style:theme.textTheme.displaySmall),
      const Icon(
        Icons.exit_to_app,
        color : Colors.grey,
        size: 25,
      ),

    ],);
  }
}