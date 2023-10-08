import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/share/http/models.dart';

typedef DefaultHeaders = Map<String, dynamic> Function();

class HttpClientOptions {
  HttpClientOptions({this.defaultHeaders});
  DefaultHeaders? defaultHeaders;
}

class HttpClient extends GetxService {
  HttpClient(this.host, {HttpClientOptions? options})
      : defaultHeaders = options?.defaultHeaders;
  final String host;
  DefaultHeaders? defaultHeaders;
  final dio = Dio();

  _generateOptions(Options? options) {
    Options optionsInit = options ?? Options();
    Map<String, dynamic> headersInit =
        defaultHeaders != null ? defaultHeaders!() : {};

    optionsInit.headers?.forEach((key, value) {
      headersInit[key] = value;
    });

    optionsInit.headers = headersInit;
    return optionsInit;
  }

  Future<T> get<T>(
    String url,
    T Function(Map<String, dynamic> json) serializable, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    final response = await dio.get(host + url,
        queryParameters: params, options: _generateOptions(options));

    return serializable(response.data);
    // try {
    //   final response = await dio.get(host + url,
    //       queryParameters: params, options: _generateOptions(options));

    //   return serializable(response.data);
    // } catch (error) {
    //   return RestfulResult(
    //       code: HttpStatus.internalServerError,
    //       message: 'Internal server exception'.tr,
    //       data: null);
    // }
  }

  Future post(String url,
      {Map<String, dynamic>? body, Options? options}) async {
    try {
      final response = await dio.post(host + url,
          data: body, options: _generateOptions(options));

      return response.data;
    } catch (error) {
      return RestfulResult(
          code: HttpStatus.internalServerError,
          message: 'Internal server exception'.tr,
          data: null);
    }
  }

  Future postForm(String url, {dynamic body, Options? options}) async {
    try {
      final response = await dio.post(host + url,
          data: body, options: _generateOptions(options));

      return response.data;
    } catch (error) {
      return RestfulResult(
          code: HttpStatus.internalServerError,
          message: 'Internal server exception'.tr,
          data: null);
    }
  }
}
