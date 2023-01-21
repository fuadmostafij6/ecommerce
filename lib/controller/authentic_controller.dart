import 'package:e_commercefullproject/repository/authentication_repo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AutheticationController extends GetxController {
  var emailcontrollar = TextEditingController();
  var passwordcontrollar = TextEditingController();

  final LoginRepo _loginRepo = LoginRepo();

  @override
  void onInit() {
    emailcontrollar = TextEditingController();
    passwordcontrollar = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontrollar.dispose();
    passwordcontrollar.dispose();
    super.dispose();
  }

  void setLoginMethod() async {
   await _loginRepo.postLoginMethod(emailcontrollar.text, passwordcontrollar.text);
  }
}
