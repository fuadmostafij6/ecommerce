
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/global_widget/Toast/TostWidget.dart';
import 'package:e_commercefullproject/global_widget/exception.dart';
import 'package:e_commercefullproject/model/auth_model/login_model.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../screen/auth/home_page/homepage.dart';

class LoginRepository{
  var dio=Dio();
  var box=Hive.box("user");
  bool loder=false;
  LoginModel? loginModel;
  Future getlogin(String email, String password)async{

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
  try{
    var response= await dio.post("https://khejuria.com/api/v2/auth/login",
        queryParameters: {
          "email":"$email",
          "password":"$password"
        }
    );
    print(response.data);
    if(response.statusCode==200){

      print(response.data);
      box.put('access_token',"${response.data["access_token"]}");
       Get.to(HomePage());
      return response.data;

    }

  }catch(e){
    final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
    ToastWidget().success("$errorMessage");
    print("Error Message__$errorMessage");
    throw Exception("'Failed to load jobs from API $e'");

  }
    
  }
  
  
}