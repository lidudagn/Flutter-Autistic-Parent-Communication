import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:autism_project/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:autism_project/model/feed.dart';
import 'package:autism_project/apis/post_api.dart';

class PostController extends GetxController {
  final api = PostApi();
  List<Feed> list = [];
  final message = TextEditingController();
  File? photo;
  final _picker = ImagePicker();
  Future<void> pickImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      photo = File(pickedImage.path);
      update();
    }
  }

  savePost() async {
    if (photo != null) {
      Uint8List imagebytes = await photo!.readAsBytes();
      String base64string = base64.encode(imagebytes);
      Feed feed = Feed(post_base64: base64string, text: message.text);
      var res = await api.savePost(feed.toMap());
      print(res);
      if (res == 201) {
        Get.offAllNamed(
          AppRoutes.home,
        );
        // do something...
      } else {
        if (message.text != "") {
          Feed feed = Feed(post_base64: photo, text: message.text);
          var res = await api.savePost(feed.toMap());
          print(res);
          if (res == 201) {
            Get.offAllNamed(
              AppRoutes.home,
            );
          }
        } else {
          //display error message bc post must include text or photo
          print('you have to post something');
        }

        //do something

      }
    }

    fetchData() async {
      var res = await api.fetchPost();
      if (res.data != null) {
        print(res.data);
        //you can change key
        res.data["feed"].forEach((element) {
          Feed feed = Feed.fromMap(element);
          list.add(feed);
        });
        update();
      }
    }
  }
}
