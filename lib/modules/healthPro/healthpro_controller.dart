import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:autism_project/model/healthPro.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:autism_project/apis/sign_up_api.dart';
import 'package:image_picker/image_picker.dart';

class healthpro_controller extends GetxController {
  final api = SignUpApi();

  final GlobalKey<FormState> healthpro = GlobalKey<FormState>();

  late TextEditingController fname, lname, bio, exprience, workingplace;

  bool isCheckedRadioBtn = false;
  bool ischekedchildGender = false;

  bool radio = false;

  String? selectedGender;

  void onInit() {
    super.onInit();
    fname = TextEditingController();
    lname = TextEditingController();
    bio = TextEditingController();
    exprience = TextEditingController();
    workingplace = TextEditingController();
  }

  File? profilePicture;
  File? license;
  final _pickerr = ImagePicker();
  final _picker = ImagePicker();

  // Implementing the image picker

  Future<void> profileImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      profilePicture = File(pickedImage.path);
      update();
    }
  }

  Future<void> uploadLicense() async {
    final XFile? pickedImagee =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImagee != null) {
      license = File(pickedImagee.path);
      update();
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
    final isValidform = healthpro.currentState!.validate();

    healthpro.currentState!.save();
  }

  healthproInfo() async {
    Uint8List imagebytes =
        await profilePicture!.readAsBytes(); //convert to bytes
    String base64string =
        base64.encode(imagebytes); //convert bytes to base64 string

    Uint8List licenses = await profilePicture!.readAsBytes(); //convert to bytes
    String lisencee = base64.encode(licenses); //convert bytes to base64 string

    healthProfessional health = healthProfessional(
        first_name: fname.text,
        last_name: lname.text,
        gender: selectedGender!,
        bio: bio.text,
        profile_pic: base64string,
        lisence: lisencee,
        experience: exprience.text,
        working_place: workingplace.text);
    print(health);
  }

  void onClickRadioButton(value) {
    print(value);
    selectedGender = value as String;
    isCheckedRadioBtn = true;
    update();
  }
}
