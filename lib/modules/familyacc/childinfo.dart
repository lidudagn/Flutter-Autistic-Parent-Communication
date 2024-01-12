import 'package:autism_project/modules/create_account/create_account_controller.dart';
import 'package:autism_project/modules/familyacc/familyacc_controller.dart';

import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget childInfo(familyacc_controller controller) {
  return SafeArea(
    child: Container(
      // decoration: BoxDecoration(
      //   border: Border.all(width: 0.25),
      // ),
      margin: EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              build_textFormField((value) {
                return controller.validateText(value!);
              }, controller.childFname, TextInputType.text, false, Icons.phone,
                  'first name', ' First Name'),
              SizedBox(
                height: 5,
              ),
              build_textFormField((value) {
                return controller.validateText(value!);
              }, controller.childLname, TextInputType.text, true,
                  Icons.remove_red_eye_sharp, 'last name', 'Last name'),
              SizedBox(
                height: 5,
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
                      groupValue: controller.selectedChildGender,
                      onChanged: (value) {
                        controller.ischekedchildGender = true;
                        controller.selectedChildGender = value as String;
                        controller.update();
                      }),
                  Text(
                    'Male',
                    style: normalText(),
                  ),
                  Radio(
                      value: 'Female',
                      groupValue: controller.selectedChildGender,
                      onChanged: (value) {
                        controller.ischekedchildGender = true;
                        controller.update();
                        controller.selectedChildGender = value as String;
                        controller.update();
                      }),
                  Text(
                    'Female',
                    style: normalText(),
                  )
                ],
              ),
              controller.correct
                  ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 52, right: 52),
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
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: DropdownDatePicker(
                  isDropdownHideUnderline: true,
                  isFormValidator: true,
                  startYear: 1900,
                  endYear: 2020,
                  width: 5,
                  onChangedDay: (value) => print('onChangedDay: $value'),
                  onChangedMonth: (value) => print('onChangedMonth: $value'),
                  onChangedYear: (value) => print('onChangedYear: $value'),
                  dayFlex: 2,
                  hintDay: 'Day',
                  hintMonth: 'Month',
                  hintYear: 'Year',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              build_textFormField(
                  ((p0) {}),
                  controller.description,
                  TextInputType.text,
                  false,
                  Icons.info,
                  'some description about child',
                  'Description'),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'therapy history:',
                    style: normalText(),
                  ),
                  Radio(
                      value: 'Yes',
                      groupValue: controller.terapyStatus,
                      onChanged: (value) {
                        controller.therapy = true;
                        controller.terapyStatus = value as String;
                        controller.update();
                      }),
                  Text(
                    'Yes',
                    style: normalText(),
                  ),
                  Radio(
                      value: 'No',
                      groupValue: controller.terapyStatus,
                      onChanged: (value) {
                        controller.therapy = false;
                        controller.terapyStatus = value as String;
                        controller.update();
                      }),
                  Text(
                    'No',
                    style: normalText(),
                  )
                ],
              ),
              controller.therapy
                  ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 52, right: 52),
                          child: Text(
                            'teraphy history is required',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromARGB(255, 208, 76, 76)),
                          ),
                        ),
                      ],
                    )
                  : const Text(''),
              SizedBox(
                height: 30,
              ),
              main_button('Next', () {
                if (controller.ischekedchildGender && controller.therapy) {
                  // Get.toNamed(
                  //   AppRoutes.profilePicture,
                  // );
                  controller.child();
                } else {
                  controller.correct = true;
                }
              }, 80, 10),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
