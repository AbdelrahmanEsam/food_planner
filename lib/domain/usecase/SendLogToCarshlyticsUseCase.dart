
import '../model/MealModel.dart';
import '../repository/Repository.dart';

class SendLogToCrashlyticsUseCase
{
  final Repository repository ;
  SendLogToCrashlyticsUseCase(this.repository);
  void execute(String dx , String dy,String time)
  {
     repository.sendLogToCrashLytics(dx : dx , dy : dy , time : time);
  }

}