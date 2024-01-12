import './organization_controller.dart';
import 'package:get/get.dart';

class organization_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => organization_controller());
  }
}
