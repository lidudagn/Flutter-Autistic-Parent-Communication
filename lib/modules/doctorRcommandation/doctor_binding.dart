import 'package:get/get.dart';

import './doctor_controller.dart';

class doctor_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => doctor_controller());
  }
}
