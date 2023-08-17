
import 'package:dio/dio.dart';

abstract class NetworkService{
  Future<Response?> get(String url, Map<String, String> params);
}