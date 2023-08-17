import 'package:food_planner/data/dto/EgyptianMealsResponse.dart';
import 'package:food_planner/data/dto/RandomMealResponse.dart';
import 'package:food_planner/data/mappers/MealsMappers.dart';
import 'package:food_planner/data/remote/RemoteClient/RemoteClient.dart';
import 'package:food_planner/domain/model/MealModel.dart';
import 'package:food_planner/domain/repository/Repository.dart';

class RepositoryImpl implements Repository {
  RemoteClient remoteClient;

  RepositoryImpl({required this.remoteClient});

  @override
  Future<List<MealModel>?> getEgyptianMeals() async {
    var egyptianMealsResponse = await remoteClient.getEgyptianMeals();
    return egyptianMealsResponse?.toMealModel();
  }

  @override
  Future<List<MealModel>?>  getOneRandomMeal()  async{
    var randomMealResponse = await remoteClient.getOneRandomMeal();
    return randomMealResponse?.toMealModel();
  }
}
