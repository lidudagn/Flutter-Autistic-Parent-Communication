import 'package:autism_project/modules/create_account/child.dart';
import 'package:autism_project/modules/create_account/create_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:autism_project/utils/button.dart';

import 'package:autism_project/themes/text_theme.dart';
import './family.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatelessWidget {


  String? userTypeValue;

  String? selectedRel;

  bool pageValue = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(builder: (controller) {
      return Scaffold(
          body: controller.pageOne
              ?
              // _buildPageTwo(controller)
              FamilyPage(controller: controller).buildFamilyPage(context)
              : controller.pageThree
                  ? _buildOrganizationForm(controller)
                  : controller.pageFour
                      ? _buildDoctorForm(controller)
                      : controller.pagechild
                          ? child()
                          // _buildChild(controller)
                          : null);
    });
  }

  Widget _buildOrganizationForm(CreateAccountController controller) {
    return Container(
      child: const Text("this is organization form"),
    );
  }

  Widget _buildDoctorForm(CreateAccountController controller) {
    return Container(
      child: const Text("This is doctors form"),
    );
  }
}

var role;
