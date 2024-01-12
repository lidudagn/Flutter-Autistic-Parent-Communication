import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:autism_project/model/prolfile.dart';
import 'package:autism_project/apis/follow.dart';

class RecommendedUserController extends GetxController {
  List<Profile> list = [];
  final api = FollowApi();

  @override
  void onInit() {
    super.onInit();
    fetchRecommendedUser();
    // Profile pro = Profile(
    //     fullName: "Abebe Kebede",
    //     follower: 303,
    //     proImageUrl:
    //         "https://images.unsplash.com/photo-1547721064-da6cfb341d50");
    // Profile pro2 = Profile(
    //     fullName: "Kebede Abebe",
    //     follower: 505,
    //     proImageUrl:
    //         "https://images.unsplash.com/photo-1547721064-da6cfb341d50");
    // Profile pro3 = Profile(
    //     fullName: "Abebech Gobana",
    //     follower: 1200,
    //     proImageUrl:
    //         "https://images.unsplash.com/photo-1547721064-da6cfb341d50");
    // list.add(pro);
    // list.add(pro2);
    // list.add(pro3);
  }

  fetchRecommendedUser() async {
    var mapData = await api.fetchRecommendedUser();
    if (mapData != null) {
      //check data here by printing it to check the keys
      print(mapData);
      mapData["payload"].forEach((element) {
        Profile pro = Profile.fromMap(element);
        list.add(pro);
      });
    } else {
      //do something
    }
    update();
  }

  decodeProImage(base64String) {
    Uint8List decodedBytes = base64.decode(base64String);
    return decodedBytes;
  }

  followUser(id) async {
    var res = await api.followUser(jsonEncode({"id": id}));
    if (res != null) {
      //do true statement
    } else {
      //do false statement
    }
  }

  unFollowUser(id) async {
    var res = await api.unFollowUser(jsonEncode({"id": id}));
    if (res != null) {
      //do true statement
    } else {
      //do false statement
    }
  }
}
