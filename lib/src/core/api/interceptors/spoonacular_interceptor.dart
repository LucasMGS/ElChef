import 'package:dio/dio.dart';
import 'package:elchef/src/core/constants/api_key.dart';
import 'package:elchef/src/core/utils/elChef_toast.dart';
import 'package:flutter/cupertino.dart';

class SpoonacularInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["content-type"] = 'application/json';
    options.headers["x-api-key"] = API_KEY;
    handler.next(options);
    // super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    ElChefToast.showToast(
        'Ocorreu um erro, tente novamente mais tarde!', false);
    debugPrint(err.toString());
    handler.reject(err);
    // super.onError(err, handler);
  }
}
