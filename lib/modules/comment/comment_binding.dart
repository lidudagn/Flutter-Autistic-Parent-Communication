import 'package:get/get.dart';

import './comment_controller.dart';

class comment_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => comment_controller());
  }
}
