import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/model/login_model.dart';
import 'package:e_commercefullproject/utils/base_url.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../global_widget/exception.dart';
import '../screen/home/home_screen.dart';

class LoginRepo {
  final Dio _dio = Dio();

  LoginModel? loginModel;
  Future postLoginMethod(String email, String password) async {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

    try {
      var response = await _dio.post(
        "${API_URL.BASE_URL}auth/login",
        queryParameters: {
          "email": "$email",
          "password": "$password",
        },
      );
      print("response___${response.data}");
      if (response.statusCode == 200) {

        print("Success");
        /// FLutter Toast  Or  Dialouge Show .

        Get.to(HomeScreen());



        return response.data;
      }
    } catch (e) {
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();


      print("Error Message__$errorMessage");

      throw Exception('Failed to load jobs from API $e');
    }
  }
}

class RegisterRepo {}
