import 'package:dio/dio.dart';
import 'package:food_planner/data/remote/networkService/NetworkService.dart';

import '../../../constants/Constants.dart';

class NetworkServiceImpl implements NetworkService{
  Dio? dio;

  NetworkServiceImpl() {
    BaseOptions options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 5000),
        connectTimeout: const Duration(milliseconds: 5000));
    options.baseUrl = BASE_URL;
    dio = Dio(options);
    dio?.interceptors.add(LogInterceptor());
  }

  @override
  Future<Response?> get(String url, Map<String, String> params) async {
    Response? response = await dio?.get(url,
        queryParameters: params,
        options: Options(responseType: ResponseType.json));
    return response;
  }
}
