// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/textForm_field.dart';

import './create_account_controller.dart';

class FamilyPage {
  CreateAccountController controller;
  FamilyPage({
    required this.controller,
  });
  List<String> itemsRel = [
    'mother',
    'father',
    'brother',
    'cousine',
    'sister',
    'other'
  ];

  Widget buildFamilyPage(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 60, 16, 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: controller.loginFormKey2,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    build_textFormField((value) {
                      return controller.validateText(value!);
                    }, controller.firstnameController, TextInputType.text,
                        false, Icons.person, 'First Name', 'First Name'),
                    const SizedBox(
                      height: 5,
                    ),
                    build_textFormField((value) {
                      return controller.validateLastname(value!);
                    }, controller.lastnameController, TextInputType.text, false,
                        Icons.person, 'last name', 'Last Name'),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Gender:',
                          style: normalText(),
                        ),
                        Radio(
                            value: 'Male',
                            groupValue: controller.selectedGender,
                            onChanged: (String? value) {
                              controller.onClickRadioButton(value);
                              controller.update();
                            }),
                        Text(
                          'Male',
                          style: normalText(),
                        ),
                        Radio(
                            value: 'Female',
                            groupValue: controller.selectedGender,
                            onChanged: (String? value) {
                              controller.onClickRadioButton(value);
                              controller.update();
                            }),
                        Text(
                          'Female',
                          style: normalText(),
                        )
                      ],
                    ),
                    controller.radio
                        ? Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 52, right: 52),
                                child: Text(
                                  'gender is required',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 208, 76, 76)),
                                ),
                              ),
                            ],
                          )
                        : const Text(''),
                    Padding(
                      padding: const EdgeInsets.only(left: 52, right: 52),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField(
                          hint: Text('your relation with autistic kid',
                              style: normalText()),
                          items: itemsRel
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: controller.selectedRel,
                          validator: (value) =>
                              value == null ? 'field required' : null,
                          onChanged: (value) {
                            controller.selectedRel = value as String?;
                          },
                        ),
                      ),
                    ),
                    build_textFormField(
                      (((p0) {})),
                      controller.bioController,
                      TextInputType.text,
                      false,
                      Icons.star_border_outlined,
                      'bio',
                      'BIO',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: main_button('Nextt', () {
                        controller.pageTwo = false;
                        controller.pagechild = true;
                        // if (controller.isCheckedRadioBtn) {r
                        //   controller.checkLogin2();
                        //   controller.pageTwo = false;
                        //   controller.pagechild = true;
                        //   controller.update();

                        //   controller.saveAccount();

                        //   // Get.toNamed(AppRoutes.profilePicture,
                        //   //     arguments: [userTypeValue]);

                        //   print(
                        //     'print this',
                        //   );
                        // } else {
                        //   controller.radio = true;
                        //   controller.update();
                        // }
                      }, 80, 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
