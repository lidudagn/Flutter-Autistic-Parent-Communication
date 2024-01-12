import 'package:autism_project/apis/sign_up_api.dart';
import 'package:autism_project/modules/signUp/signup_controller.dart';
import 'package:autism_project/utils/import.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/apis/sign_up_api.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/text_theme.dart';
import '../../utils/button.dart';
import '../../utils/textForm_field.dart';
import './emailcheck.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final List<String> items = [
    'Parent',
    'Health_professional',
    'Organization',
  ];
  bool match = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<signup_controller>(builder: (controller) {
      return Scaffold(
          body: controller.isSignup
              ? emailcheck(controller)
              : _create(controller));
    });
  }

  Widget _create(signup_controller controller) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Form(
            key: controller.loginFormKey1,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                const SizedBox(
                  height: 110,
                ),
                build_textFormField((value) {
                  return controller.validateEmail(value!);
                }, controller.email, TextInputType.emailAddress, false,
                    Icons.email_rounded, 'Email', ' Email'),
                const SizedBox(
                  height: 5,
                ),
                build_textFormField((value) {
                  return controller.validatePassword(value!);
                }, controller.password, TextInputType.visiblePassword, true,
                    Icons.remove_red_eye_sharp, 'password', 'Password'),
                const SizedBox(
                  height: 5,
                ),
                build_textFormField(((val) {
                  if (controller.password.text !=
                      controller.confirmPassword.text) {
                    return 'password doesnot match';
                  }
                }),
                    controller.confirmPassword,
                    TextInputType.visiblePassword,
                    true,
                    Icons.remove_red_eye_sharp,
                    'confirm password',
                    'Confirm Password'),
                Container(
                  child: match
                      ? Text(
                          "the password doesnt match",
                          style: GoogleFonts.roboto(color: Colors.red),
                        )
                      : Text(""),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField(
                      hint: Text('who are you?', style: normalText()),
                      items: items
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
                      value: controller.user_type,
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      onChanged: (value) {
                        setState(() {
                          controller.user_type = value as String;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                main_button('Next', () {
                  controller.createAccount();
                  print('next button clicked');
                }, 80, 10),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
