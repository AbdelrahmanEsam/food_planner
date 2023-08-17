import 'package:food_planner/domain/repository/Repository.dart';
import 'package:get_it/get_it.dart';
import 'package:food_planner/data/repository/RepositoryImpl.dart';
final getIt = GetIt.instance ;


Future<void> init() async
{

  getIt.registerFactory<Repository>(() => RepositoryImpl(remoteClient: getIt()));


}
