import 'dart:io';

import 'package:autism_project/modules/organizationacc/organization_controller.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/import.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class organizationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<organization_controller>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 30, 16, 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: controller.organization,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      children: [
                        build_textFormField((value) {
                          return controller.validateText(value!);
                        }, controller.name, TextInputType.text, false,
                            Icons.person, 'name', ' Organization Name'),
                        const SizedBox(
                          height: 5,
                        ),
                        build_textFormField((value) {
                          return controller.validateText(value!);
                        }, controller.address, TextInputType.text, false,
                            Icons.person, 'address', 'Adress'),
                        const SizedBox(
                          height: 15,
                        ),
                        build_textFormField((value) {
                          // return controller.validateText(value!);
                        }, controller.startingYear, TextInputType.number, false,
                            Icons.person, 'starting year', 'Starting Year'),
                        const SizedBox(
                          height: 15,
                        ),
                        build_textFormField(
                          (((p0) {})),
                          controller.bio,
                          TextInputType.text,
                          false,
                          Icons.star_border_outlined,
                          'bio',
                          'BIO',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.profileImage();
                                  },
                                  child: Text('Profile Picture'),
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              radius: 60,
                              child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      controller.profilePicture != null
                                          ? Image.file(
                                              controller.profilePicture,
                                              fit: BoxFit.cover,
                                            ).image
                                          : AssetImage('assets/avator.jpg')),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.uploadLicense();
                                  },
                                  child: Text('license photo'),
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              color: Color.fromARGB(255, 248, 244, 244),
                              child: controller.license != null
                                  ? Image.file(controller.license,
                                      fit: BoxFit.cover)
                                  : Center(
                                      child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: const Text(
                                          'Please upload your license'),
                                    )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        main_button('create', () {
                          controller.saveOrganizationInfo();
                        }, 80, 10),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
