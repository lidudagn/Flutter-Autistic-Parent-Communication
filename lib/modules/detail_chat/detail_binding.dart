import 'package:get/get.dart';

import './detail_controller.dart';

class detail_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => detail_controller());
  }
}
