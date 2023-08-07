import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';

class NetworkClient {
  String _token = '';
  late final Dio api;

  Future<Dio> init(SharedPreferences preferences) async {
    api = Dio();
    api.interceptors.add(InterceptorsWrapper(
      /// onRequest

      onRequest: (options, handler) async {
        _token = preferences.getString(ACCESS_TOKEN) ?? '';
        debugPrint(_token);
        if (_token != '') {
          options.headers['Authorization'] = 'Bearer $_token';
          // options.headers["Accept"] = "application/json";
          // options.headers["Content-type"] = "application/json";
          options.headers['Access-Control-Allow-Origin'] = '*';
          options.headers['Access-Control-Allow-Methods'] =
              'GET, POST, OPTIONS, PUT, PATCH, DELETE';
          options.headers['Access-Control-Allow-Headers'] =
              'GET, POST, OPTIONS, PUT, PATCH, DELETE';
          options.headers['Access-Control-Allow-Credentials'] = true;
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print("RESPONSE: $response");
        return handler.next(response);
      },

      /// onError
      onError: (error, handler) async {
        print("ERROR: $error");
        if (_shouldRetry(error)) {
          try {} catch (er) {
            return handler.next(error);
          }
        }

        if (error.response?.statusCode == 401) {
          RequestOptions requestOptions = error.requestOptions;
          final options = Options(
            method: requestOptions.method,
            headers: requestOptions.headers,
          );
          options.headers!['Authorization'] = 'Bearer $_token';
          options.headers!["Accept"] = "application/json";
          options.headers!["Content-type"] = "application/json";
          options.headers!['Access-Control-Allow-Origin'] = '*';
          options.headers!['Access-Control-Allow-Methods'] =
              'GET, POST, OPTIONS, PUT, PATCH, DELETE';
          options.headers!['Access-Control-Allow-Headers'] =
              'GET, POST, OPTIONS, PUT, PATCH, DELETE';
          options.headers!['Access-Control-Allow-Credentials'] = true;

          Response cloneReq = await Dio().request<dynamic>(
              BASE_URL + requestOptions.path,
              data: requestOptions.data,
              queryParameters: requestOptions.queryParameters,
              options: options);
          return handler.resolve(cloneReq);
        }
        return handler.next(error);
      },
    ));
    api.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return api;
  }

  // Future<void> refreshToken(SharedPreferences preferences) async {
  //   String refreshToken = preferences.getString(REFRESH_TOKEN) ?? '';
  //   Dio dio = Dio();
  //   try {
  //     debugPrint('AA: $refreshToken');
  //     final response = await dio
  //         .post('${BASE_URL}token/refresh/', data: {'refresh': refreshToken});
  //     if (response.statusCode == 200) {
  //       RefreshTokenResponse token =
  //           RefreshTokenResponse.fromJson(response.data);
  //       debugPrint('TTTTT: ${token.access}');
  //       await preferences.setString(ACCESS_TOKEN, token.access ?? "");
  //       await preferences.setString(REFRESH_TOKEN, token.refresh);
  //       _token = token.access ?? "";
  //     }
  //   } catch (err) {
  //     _goToLoginScreen();
  //     debugPrint('EEE:$err');
  //   }
  // }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }
}
