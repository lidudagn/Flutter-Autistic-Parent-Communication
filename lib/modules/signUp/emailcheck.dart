import 'package:autism_project/modules/signUp/signup_controller.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:flutter/material.dart';

Widget emailcheck(signup_controller controller) {
  return Scaffold(
      body: SafeArea(
    child: Container(
      margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              const SizedBox(
                height: 110,
              ),
              build_textFormField(
                  (value) {},
                  controller.code,
                  TextInputType.number,
                  false,
                  Icons.email_rounded,
                  'code',
                  ' code'),
              const SizedBox(
                height: 5,
              ),
              main_button('Enter', () {
                print('validate');
                print(controller.code.text);
                controller.verifyEmail();
              }, 80, 10),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
