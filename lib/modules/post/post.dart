import 'package:autism_project/modules/post/post_controller.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:autism_project/utils/button.dart';

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'post something...',
                    style: normalText(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: controller.message,
                minLines: 10,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.5, color: ThemeColor.maincolor),
                )),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () {
                        controller.pickImage();
                      },
                      icon: Icon(
                        Icons.photo,
                        color: ThemeColor.maincolor,
                      ),
                      label: Text(
                        'Photo',
                        style: normalText(
                            color: ThemeColor.maincolor, fontSize: 17),
                      ))
                ],
              ),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 248, 244, 244),
                child: controller.photo != null
                    ? Image.file(controller.photo!, fit: BoxFit.cover)
                    : Center(
                        child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text('select photo'),
                      )),
              ),
              SizedBox(
                height: 15,
              ),
              main_button('post', () {
                controller.savePost();
              }, 140, 13)
            ],
          ),
        )),
      );
    });
  }
}

fun() {}
