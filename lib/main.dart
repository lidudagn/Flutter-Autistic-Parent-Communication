import 'package:autism_project/modules/firstPage/firstPage.dart';
import 'package:autism_project/modules/firstPage/firstPage_binding.dart';

import 'package:autism_project/routes/pages.dart';

import 'package:flutter/material.dart';



import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: false,
      defaultTransition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 200),
      title: "autos",
      debugShowCheckedModeBanner: false,
      home: firstPage(),
      initialBinding: firstPage_binding(),
      getPages: AppPages.pages,
    );
  }
}
