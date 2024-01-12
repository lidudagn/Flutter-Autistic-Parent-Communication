import 'package:flutter/material.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/logo.jpg',
              width: 150,
              height: 150,
            ),
            Text(
              'Autos',
              style: normalText(fontSize: 22, color: ThemeColor.maincolor),
            ),
            SizedBox(
              height: 60,
            ),

            main_button('Social Media', () {
              // Get.toNamed(
              //   AppRoutes.signin,
              // );
              Get.toNamed(
                AppRoutes.detailChat,
              );
            }, 94, 15),
            SizedBox(
              height: 40,
            ),
            // main_button(key, 'Autism Awareness ', fun, 70, 15),
            TextButton(
              onPressed: () {
                Get.toNamed(
                  AppRoutes.awareness,
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                //<-- SEE HERE
                side: BorderSide(width: 1.0, color: ThemeColor.maincolor),
              ),
              child: Text(
                'Autism Awareness',
                style: normalText(
                  color: ThemeColor.maincolor,
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
