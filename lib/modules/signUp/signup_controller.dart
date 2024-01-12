import 'package:autism_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:autism_project/apis/sign_up_api.dart';
import 'package:autism_project/model/signup.dart';
import 'dart:convert';
import 'package:autism_project/model/user_account.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import '../../routes/routes.dart';

class signup_controller extends GetxController {
  final GlobalKey<FormState> loginFormKey1 = GlobalKey<FormState>();
  late TextEditingController email, password, confirmPassword, code;
  UserAccount? userAccount;
  final api = SignUpApi();
  //   final List<String> items = [
  //   'family',
  //   'health professional',
  //   'organization',
  // ];

  bool isSignup = false;
  String? emailCode;
  String? user_type;
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    code = TextEditingController();
  }

//  sendcode() async {
//     var jsonData = json.encode({"otp": code});
//   }
  verifyEmail() async {
    var jsonData = json.encode({"otp": code.text});
    var res = await api.sendCode(jsonData);
    print(res);
    UserAccount userAccount = UserAccount.fromMap(res.data["userAcc"]);

    print(userAccount.user_type.toString());
    String next = userAccount.user_type.toString();

    if (res != null) {
      if (next == 'Parent') {
        // var rec = json.decode(res.data);

        Get.offAllNamed(
          AppRoutes.familyacc,
        );

        //Do something
      } else if (next == 'Organization') {
        Get.offAllNamed(
          AppRoutes.organizationInfo,
        );
      } else if (next == 'Organization') {
        Get.offAllNamed(
          AppRoutes.organizationInfo,
        );
      }
    } else {
      //show Error message
    }
  }

  createAccount() async {
    signup signupp = signup(
        email: email.text, password: password.text, user_type: user_type!);
    var jsonData = signupp.toJson();
    print(jsonData);
    var res = await api.signup(jsonData);
    print(res.data);
    if (res.statusCode == 201
        // res != null
        ) {
      print('sharedpreff');
      userAccount = UserAccount.fromMap(res.data['payload']);
      SharedPreferences perf = await SharedPreferences.getInstance();
      await perf.setString("id", userAccount!.id);
      print(userAccount);
      print('object');
      if (res.statusCode == 201) {
        isSignup = true;
        update();
      }
      // Get.toNamed(
      //   AppRoutes.awareness,
      // );
      // update();
    }
    return res;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }

    return null;
  }

  //

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  checkLogin1() {
    final isValid = loginFormKey1.currentState!.validate();

    loginFormKey1.currentState!.save();
  }
}
