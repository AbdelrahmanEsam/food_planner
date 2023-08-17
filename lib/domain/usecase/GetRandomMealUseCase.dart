
import '../model/MealModel.dart';
import '../repository/Repository.dart';

class GetRandomMealUseCase
{
  final Repository repository ;
  GetRandomMealUseCase(this.repository);
  Future<List<MealModel>?> execute()
  {
    return repository.getOneRandomMeal();
  }

}