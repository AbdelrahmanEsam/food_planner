import 'Meals.dart';

class EgyptianMealsResponse {
  List<Meals> meals = [];
  EgyptianMealsResponse({
     required this.meals,});

  EgyptianMealsResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = [];
      json['meals'].forEach((v) {
        meals.add(Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meals'] = meals.map((v) => v.toJson()).toList();
    return map;
  }

}