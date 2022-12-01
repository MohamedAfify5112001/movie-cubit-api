import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_cubit/core/constants/app_constants.dart';

class NetworkService {
  static late Dio dio;

  static initDio() {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: AppConstants.baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
  }

  static Future<Response> getData({required String endPoint}) async {
    return await dio
        .get(endPoint, queryParameters: {'api_key': AppConstants.key});
  }
}
