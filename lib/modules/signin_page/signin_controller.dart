import 'dart:convert';

import 'package:autism_project/apis/sign_up_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:autism_project/apis/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/routes.dart';

class signin_controller extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  final api = loginApi();

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  // void onClose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  // }

  login() async {
    var jsondata = json.encode(
        {'email': emailController.text, 'password': passwordController.text});
    var res = await api.loginn(jsondata);
    if (res != null) {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("token", res["payload"]["token"] as String);
      String? token = pref.getString("token");
      print(token);
      Get.offAllNamed(
        AppRoutes.home,
      );
    }
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
