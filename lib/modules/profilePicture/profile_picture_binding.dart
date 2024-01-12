import 'package:autism_project/modules/profilePicture/profile_picture_controller.dart';
import 'package:get/get.dart';

class ProfilePictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePictureController());
  }
}
