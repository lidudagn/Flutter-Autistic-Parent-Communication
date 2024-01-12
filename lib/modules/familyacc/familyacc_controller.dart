import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:autism_project/apis/familyinfo.dart';
import 'package:autism_project/model/chlidinfo.dart';
import 'package:autism_project/model/user_profile.dart';
import 'package:autism_project/modules/home/homePage.dart';
import 'package:autism_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:autism_project/apis/sign_up_api.dart';
import 'package:image_picker/image_picker.dart';

class familyacc_controller extends GetxController {
  final api = parent();
  final _picker = ImagePicker();
  String img = '';
  Rx<File> profilePicture = Rx<File>(File(""));
  var profile_picture_base64 = "".obs;
  final GlobalKey<FormState> loginFormKey2 = GlobalKey<FormState>();
  List<String> itemsRel = [
    'parent',
    'relative',
    'care taker',
  ];
  Future<void> profileImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      profilePicture.value = File(pickedImage.path);
      update();
    }
  }

  late TextEditingController confirmPasswordController,
      fname,
      lname,
      bio,
      childFname,
      childLname,
      birthday,
      description;
  bool next = true;
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
    fname = TextEditingController();
    bio = TextEditingController();
    lname = TextEditingController();

    description = TextEditingController();
    birthday = TextEditingController();
    childLname = TextEditingController();
    childFname = TextEditingController();

    confirmPasswordController = TextEditingController();
  }

  child() async {
    childInfo childinfo = childInfo(
        first_name: childFname.text,
        last_name: childLname.text,
        gender: selectedChildGender!,
        birthday: 'birthday',
        description: description.text,
        therapy_history: therapy!);
    print(childinfo);
    var res = await api.childinformation(childinfo.toMap());
    print(res);
    if (res == 201) {
      print('sucess');
      Get.toNamed(
        AppRoutes.signin,
      );
    }
  }

  parentInfo() async {
    UserProfile userProfile = UserProfile(
        first_name: fname.text,
        last_name: lname.text,
        gender: selectedGender!,
        relation: selectedRel!,
        bio: bio.text,
        base64: profile_picture_base64.value);

    var res = await api.familyInfo(userProfile.toJson());
    print(res);
    print('res');
    if (res == 201) {
      next = false;
      update();
    }
  }

  Future<void> getprofile_image() async {
    XFile? selectedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      profilePicture.value = File(selectedImage.path);
      Uint8List imgbytes = await profilePicture.value.readAsBytes();
      profile_picture_base64.value = base64.encode(imgbytes);
      update();
      print(profile_picture_base64.value);
    }
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
