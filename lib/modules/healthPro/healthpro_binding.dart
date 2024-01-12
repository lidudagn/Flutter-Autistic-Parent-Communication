import './healthpro_controller.dart';
import 'package:get/get.dart';

class healthpro_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => healthpro_controller());
  }
}
