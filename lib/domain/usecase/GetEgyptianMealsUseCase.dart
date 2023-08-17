
import 'package:food_planner/domain/model/MealModel.dart';
import 'package:food_planner/domain/repository/Repository.dart';

class GetEgyptianMealsUseCase
{
  final Repository repository ;

  GetEgyptianMealsUseCase(this.repository);
  Future<List<MealModel>?> execute()
  {
    return repository.getEgyptianMeals();
  }
}