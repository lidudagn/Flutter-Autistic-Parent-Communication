
import 'package:flutter/material.dart';

import 'package:autism_project/themes/color_theme.dart';
import 'package:get/get.dart';

class build_textFormField extends StatelessWidget {
  String hintText;
  String labelText;
  bool obsecure;
  String? Function(String? val) function;
  TextInputType keybord_type;
  TextEditingController textEditingController;

  // TextEditingController controller;
  IconData icon;
  build_textFormField(
      this.function,
      this.textEditingController,
      this.keybord_type,
      this.obsecure,
      //  this.controller,
      this.icon,
      this.hintText,
      this.labelText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 2, 50, 2),
      child: TextFormField(
        validator: function,
        obscureText: obsecure,
        keyboardType: keybord_type,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
          labelText: labelText,
        ),
      ),
    );
  }
}
