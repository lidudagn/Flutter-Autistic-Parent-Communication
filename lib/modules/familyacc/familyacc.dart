import 'package:autism_project/modules/create_account/child.dart';
import 'package:autism_project/modules/familyacc/familyacc_controller.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/utils/import.dart';
import 'package:autism_project/utils/textForm_field.dart';
import 'package:flutter/material.dart';
import './childinfo.dart';

class familyacc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<familyacc_controller>(builder: (controller) {
      return Scaffold(
          body: controller.next
              ? _familyInfo(controller)
              : childInfo(controller));
    });
  }

  Widget _familyInfo(familyacc_controller controller) {
    return SafeArea(
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
                    }, controller.fname, TextInputType.text, false,
                        Icons.person, 'First Name', 'First Name'),
                    const SizedBox(
                      height: 5,
                    ),
                    build_textFormField((value) {
                      return controller.validateLastname(value!);
                    }, controller.lname, TextInputType.text, false,
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
                          items: controller.itemsRel
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
                      (value) {
                        return controller.validateText(value!);
                      },
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
                                controller.getprofile_image();
                              },
                              child: const Text('Profile Picture'),
                            )),
                        const SizedBox(
                          width: 30,
                        ),
                        CircleAvatar(
                          radius: 60,
                          child: CircleAvatar(
                              radius: 60,
                              backgroundImage: controller.profilePicture != null
                                  ? Image.file(
                                      controller.profilePicture.value,
                                      fit: BoxFit.cover,
                                    ).image
                                  : AssetImage('assets/avator.jpg')),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: main_button('Next', () {
                        controller.parentInfo();
                      }, 80, 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
