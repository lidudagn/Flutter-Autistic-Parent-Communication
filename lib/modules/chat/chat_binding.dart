import 'package:get/get.dart';

import './chat_controller.dart';

class chat_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => chat_controller());
  }
}
