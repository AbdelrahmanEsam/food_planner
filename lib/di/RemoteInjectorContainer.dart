import 'package:food_planner/data/remote/RemoteClient/RemoteClient.dart';
import 'package:food_planner/data/remote/networkService/NetworkService.dart';
import 'package:food_planner/data/remote/networkService/NetworkServiceImpl.dart';
import 'package:food_planner/data/remote/remoteClient/RemoteClientImpl.dart';
import 'package:get_it/get_it.dart';
import 'package:food_planner/data/repository/RepositoryImpl.dart';
final getIt = GetIt.instance ;


Future<void> init() async
{

  getIt.registerFactory<NetworkService>(() => NetworkServiceImpl());
  getIt.registerFactory<RemoteClient>(() => RemoteClientImpl(networkService: getIt()));


}
