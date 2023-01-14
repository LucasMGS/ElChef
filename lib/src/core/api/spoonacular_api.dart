import 'package:dio/dio.dart';
import 'package:elchef/src/core/api/interceptors/spoonacular_interceptor.dart';

final options = BaseOptions(
  receiveTimeout: 30000,
  sendTimeout: 30000,
  validateStatus: (status) => status! < 500,
  connectTimeout: 30000,
  followRedirects: true,
  baseUrl: 'https://api.spoonacular.com',
);

final spoonacular = Dio(options)..interceptors.add(SpoonacularInterceptor());
