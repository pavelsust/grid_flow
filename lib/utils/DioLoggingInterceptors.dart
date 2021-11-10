import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_grid_flow/utils/Constants.dart';

import 'package:sp_util/sp_util.dart';


class CustomInterceptors extends Interceptor {
  Dio _dio;
  CustomInterceptors(this._dio);


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'Authorization': 'Bearer ${SpUtil.getString(API_TOKEN, defValue: "")}'
    });

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }


  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async{


      int responseCode = err.response!.statusCode!;

      // if (responseCode == 403 || responseCode == 401) {
      //   _dio.interceptors.requestLock.lock();
      //   _dio.interceptors.responseLock.lock();
      //
      //   AuthService authService = AuthService();
      //   AuthPojo authPojo = AuthPojo(token: "" + SpUtil.getString(REFRESH_TOKEN, defValue: "")!);
      //
      //   var result = await authService.getRefreshToken(authPojo);
      //   if (!result!.error) {
      //     SpUtil.putString(API_TOKEN, result.data!.token!);
      //     SpUtil.putString(REFRESH_TOKEN, result.data!.refreshToken!);
      //   }
      //
      //   RequestOptions options = err.response!.requestOptions;
      //
      //   _dio.interceptors.requestLock.unlock();
      //   _dio.interceptors.responseLock.unlock();
      //
      //
      //   _dio.options.headers['content-Type'] = 'application/json';
      //   _dio.options.headers["authorization"] =
      //   "Bearer ${SpUtil.getString(API_TOKEN, defValue: "")}";
      //
      //   _dio.request(options.path).then((value){
      //     handler.resolve(value);
      //   });
      // }
  }
}