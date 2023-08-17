
import 'Meals.dart';
import 'dart:convert';

class RandomMealResponse {
  List<Meals>? meals;

  RandomMealResponse({this.meals});

  RandomMealResponse.fromJson(Map<String, dynamic> json) {

    if (json['meals'] != null) {
      meals = <Meals>[];
      json['meals'].forEach((v) {
        meals!.add(Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meals != null) {
      data['meals'] = meals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

