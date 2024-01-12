import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:autism_project/apis/organization_api.dart';
import 'package:autism_project/model/organization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../routes/routes.dart';

class organization_controller extends GetxController {
  final GlobalKey<FormState> organization = GlobalKey<FormState>();
  late TextEditingController name, address, startingYear, bio;
  final OrganizationApi api = OrganizationApi();
  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    address = TextEditingController();
    startingYear = TextEditingController();
    bio = TextEditingController();
  }

  dynamic profilePicture;
  dynamic license;
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

  checkLogin2() {
    final isValidform = organization.currentState!.validate();

    organization.currentState!.save();
  }

  saveOrganizationInfo() async {
    String proString = '';
    String licensesString = '';
    if (profilePicture != null) {
      Uint8List imagebytes =
          await profilePicture.readAsBytes(); //convert to bytes
      proString = base64.encode(imagebytes); //convert bytes to base64 string
  
    }
    if (license != null) {
      Uint8List licensesBytes = await license.readAsBytes(); //convert to bytes
      licensesString =
          base64.encode(licensesBytes); //convert bytes to base64 string
 
    }
   
    Organization org = Organization(
        organization_name: name.text,
        address: address.text,
        starting_year: startingYear.text,
        bio: bio.text,
        profile_base64: proString,
        lisence_base64: licensesString);
    if (proString != '') {
      org.profile_base64 = proString;
    }
    if (licensesString != '') {
      org.lisence_base64 = licensesString;
    }
    var res = api.saveOrganizationInfo(org.toMap());
    print(res);
    
    if (res == 201) {
      Get.toNamed(
        AppRoutes.signin,
      );
    }
    //do something for response
  }
}
