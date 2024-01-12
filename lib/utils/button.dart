import 'package:autism_project/themes/text_theme.dart';

import 'package:flutter/material.dart';

import 'package:autism_project/themes/color_theme.dart';

class main_button extends StatelessWidget {
  String text;
  Function() function;
  double width;
  double hight;
  main_button(this.text, this.function, this.width, this.hight, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Padding(
            padding: EdgeInsets.fromLTRB(width, hight, width, hight),
            child: Text(text, style: poppinsRegular()),
          ),
          onPressed: function,
          style: ElevatedButton.styleFrom(
            primary: ThemeColor.maincolor,
          ),
        ),
      ],
    );
  }
}
