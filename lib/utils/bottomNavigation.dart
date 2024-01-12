import 'package:flutter/material.dart';
import 'package:autism_project/modules/home/homepage.dart';
import 'package:autism_project/modules/notification/notification.dart';
import 'package:autism_project/modules/post/post.dart';

import 'package:autism_project/themes/color_theme.dart';
import 'package:get/get.dart';
import 'package:autism_project/routes/routes.dart';

final bottomNavigationBar = BottomNavigationBar(
  selectedItemColor: ThemeColor.maincolor,
  unselectedItemColor: Colors.black38,
  type: BottomNavigationBarType.fixed,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications), label: "Notification"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Follow")
  ],
  onTap: (value) {
    if (value == 0) {
      Get.toNamed(AppRoutes.home);
    } else if (value == 1) {
      Get.toNamed(AppRoutes.post);
    } else if (value == 2) {
      Get.toNamed(AppRoutes.notification);
    } else if (value == 3) {
      Get.toNamed(AppRoutes.recommendedUser);
    }
  },
);
