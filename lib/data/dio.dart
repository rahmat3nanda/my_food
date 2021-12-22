import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as d;
import 'package:my_food/data/api.dart';

class Dio {
  late d.Dio _dio;

  Dio({Map<String, dynamic>? headers}) {
    _dio = d.Dio();
    _dio.options = d.BaseOptions(
      baseUrl: API.baseUrl,
      connectTimeout: 20000,
      receiveTimeout: 20000,
      responseType: ResponseType.json,
      headers: headers ??
          {
            "Accept": "applicaridertion/json",
            "Content-Type": "application/json",
          },
    );
    _dio.interceptors.add(
      d.InterceptorsWrapper(
        onRequest: (d.RequestOptions o, d.RequestInterceptorHandler h) =>
            h.next(o),
        onResponse: (d.Response r, d.ResponseInterceptorHandler h) => h.next(r),
        onError: (d.DioError e, d.ErrorInterceptorHandler h) => h.next(e),
      ),
    );
  }

  Future post({
    required String url,
    dynamic body,
    Map<String, dynamic>? param,
  }) async {
    try {
      return await _dio.post(
        url,
        queryParameters: param,
        data: body,
      );
    } on TimeoutException catch (e) {
      return Future.error(e);
    } on SocketException catch (e) {
      return Future.error(e);
    } on d.DioError catch (e) {
      return Future.error(e);
    }
  }

  Future get({
    required String url,
    Map<String, dynamic>? param,
  }) async {
    try {
      return await _dio.get(
        url,
        queryParameters: param,
      );
    } on TimeoutException catch (e) {
      return Future.error(e);
    } on SocketException catch (e) {
      return Future.error(e);
    } on d.DioError catch (e) {
      return Future.error(e);
    }
  }

  Future delete({
    required String url,
    Map<String, dynamic>? param,
  }) async {
    try {
      return await _dio.delete(
        url,
        queryParameters: param,
      );
    } on TimeoutException catch (e) {
      return Future.error(e);
    } on SocketException catch (e) {
      return Future.error(e);
    } on d.DioError catch (e) {
      return Future.error(e);
    }
  }

  Future download({
    required String url,
    required String path,
    dynamic body,
    Map<String, dynamic>? param,
    Function(int count, int total)? onReceiveProgress,
  }) async {
    try {
      return await _dio.download(
        url,
        path,
        data: body,
        onReceiveProgress: onReceiveProgress,
        queryParameters: param,
      );
    } on TimeoutException catch (e) {
      return Future.error(e);
    } on SocketException catch (e) {
      return Future.error(e);
    } on d.DioError catch (e) {
      return Future.error(e);
    }
  }
}
