import 'package:autism_project/modules/post/post_controller.dart';
import 'package:get/get.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostController());
  }
}
