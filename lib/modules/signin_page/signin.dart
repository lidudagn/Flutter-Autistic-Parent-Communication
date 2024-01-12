import 'package:autism_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:get/route_manager.dart';
import './signin_controller.dart';
import 'package:get/get.dart';

class signin extends StatelessWidget {
  signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<signin_controller>(builder: (((controller) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 60, left: 16, right: 16),
            child: SingleChildScrollView(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Image.asset(
                        "assets/logo.jpg",
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Sign In", style: normalText()),
                    const SizedBox(
                      height: 50,
                    ),
                    build_textFormField(
                        ((Value) {}),
                        controller.emailController,
                        TextInputType.emailAddress,
                        false,
                        Icons.email_rounded,
                        'Email',
                        'Email'),
                    const SizedBox(
                      height: 5,
                    ),
                    build_textFormField((value) {
                      return controller.validatePassword(value!);
                    },
                        controller.passwordController,
                        TextInputType.visiblePassword,
                        true,
                        Icons.remove_red_eye_sharp,
                        'Password',
                        'Password'),
                    const SizedBox(
                      height: 30,
                    ),
                    main_button('Sign In', () {
                      controller.login();
                    }, 80, 10),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have any account?',
                          style: normalText(
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(
                              AppRoutes.signup,
                            );
                          },
                          child: Text(
                            'create account',
                            style: normalText(
                                fontSize: 14, color: ThemeColor.maincolor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    })));
  }
}
