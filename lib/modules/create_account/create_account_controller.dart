import 'dart:convert';

import 'package:autism_project/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:autism_project/model/user_profile.dart';
import './create_account.dart';
import 'package:autism_project/apis/sign_up_api.dart';

class CreateAccountController extends GetxController {
  final api = SignUpApi();

  final GlobalKey<FormState> loginFormKey2 = GlobalKey<FormState>();
  bool pageOne = true,
      pageTwo = false,
      pageThree = false,
      pageFour = false,
      pagechild = false;
  late TextEditingController confirmPasswordController,
      firstnameController,
      lastnameController,
      bioController,
      childFname,
      childLname,
      birthday,
      description;

  late String userType;
  bool correct = false;
  bool therapy = false;
  bool isCheckedRadioBtn = false;
  bool ischekedchildGender = false;
  String? selectedRel;
  bool radio = false;
  String? userTypeValue;
  String? selectedGender;
  String? selectedChildGender;
  String? terapyStatus;

  void onInit() {
    super.onInit();
    description = TextEditingController();
    birthday = TextEditingController();
    childLname = TextEditingController();
    childFname = TextEditingController();
    bioController = TextEditingController();
    lastnameController = TextEditingController();
    firstnameController = TextEditingController();

    confirmPasswordController = TextEditingController();
  }

  saveAccount() async {
    // UserProfile userProfile = UserProfile(
    //     id: 0,
    //     email: emailController.text,
    //     password: passwordController.text,
    //     typeOfUser: '',
    //     firstName: firstnameController.text,
    //     lastName: lastnameController.text,
    //     gender: '',
    //     relationshipWithKid: '',
    //     bio: bioController.text);
    // var jsonData = userProfile.toJson();
    //send To backEnd
    var res = await api.signup({"FFF": "FFFF"});
  }



  String? validateText(String value) {
    if (value.isEmpty) {
      return 'Enter Your Name';
    } else if (!RegExp('[a-zA-Z]').hasMatch(value)) {
      return 'number is not allowed for name';
    } else if (value.length < 4) {
      return 'minimum 4 letter is required for name';
    }
  }

  String? validateLastname(String value) {
    if (value.isEmpty) {
      return null;
    } else if (!RegExp('[a-zA-Z]').hasMatch(value)) {
      return 'number is not allowed for name';
    }
  }

  checkLogin2() {
    final isValidform = loginFormKey2.currentState!.validate();

    loginFormKey2.currentState!.save();
  }

  void onClickRadioButton(value) {
    print(value);
    selectedGender = value as String;
    isCheckedRadioBtn = true;
    update();
  }
}
