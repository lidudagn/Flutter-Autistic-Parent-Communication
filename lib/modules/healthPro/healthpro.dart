import 'package:autism_project/modules/healthPro/healthpro_controller.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/import.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:flutter/material.dart';

class healthpro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<healthpro_controller>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: controller.healthpro,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            child: TextFormField(
                              controller: controller.fname,
                              decoration: InputDecoration(
                                labelText: "First name",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 120,
                            child: TextFormField(
                              controller: controller.lname,
                              decoration: InputDecoration(
                                labelText: "Last name",
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      build_textFormField((value) {
                        // return controller.validateText(value!);
                      }, controller.exprience, TextInputType.number, false,
                          Icons.person, 'Exprience year', 'Exprience year'),
                      const SizedBox(
                        height: 15,
                      ),
                      build_textFormField((value) {
                        return controller.validateText(value!);
                      }, controller.workingplace, TextInputType.text, false,
                          Icons.person, 'working place', 'Working Place'),
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
                                        color:
                                            Color.fromARGB(255, 208, 76, 76)),
                                  ),
                                ),
                              ],
                            )
                          : const Text(''),
                      build_textFormField(
                        (((p0) {})),
                        controller.bio,
                        TextInputType.text,
                        false,
                        Icons.star_border_outlined,
                        'bio',
                        'BIO',
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
                                            controller.profilePicture!,
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
                                ? Image.file(controller.license!,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: main_button('create', () {
                          controller.healthproInfo();
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
    });
  }
}
