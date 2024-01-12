import 'dart:convert';
import 'dart:typed_data';

import 'package:autism_project/apis/feed_api.dart';
import 'package:autism_project/model/feed.dart';
import 'package:autism_project/model/feed_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int like = 0;
  List<FeedHome> list = [];
  final api = FeedApi();
  @override
  void onInit() {
    super.onInit();
    fetchFeed();
  }

  fetchFeed() async {
    var data = await api.fetchFeedForHome();
    if (data != null) {
      data["postRead"].forEach((element) {
        FeedHome feed = FeedHome.fromMap(element);
        list.add(feed);
      });
    }
    update();
  }

  decodeProImage(base64String) {
    Uint8List decodedBytes = base64.decode(base64String);
    return decodedBytes;
  }

  getProfile() async {}
}
