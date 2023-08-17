
import 'package:flutter/material.dart';
import 'package:food_planner/constants/Strings.dart';
import '../../../constants/Theme.dart';
final theme = MyTheme.light();
class SearchYourMealTextField extends StatefulWidget {
  const SearchYourMealTextField({super.key});

  @override
  State<SearchYourMealTextField> createState() => _SearchYourMealTextFieldState();
}

class _SearchYourMealTextFieldState extends State<SearchYourMealTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        filled: true,
        hintStyle: theme.textTheme.labelSmall,
        hintText: Strings.searchYourMealHint,
        fillColor: Colors.white70,
      ),
    );
  }
}
