import 'package:flutter/material.dart';
import 'package:autism_project/themes/color_theme.dart';

TextStyle poppinsRegular({
  Color color = ThemeColor.white,
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Poppins',
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle normalText({
  Color color = ThemeColor.primaryGrey,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Poppins',
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}
