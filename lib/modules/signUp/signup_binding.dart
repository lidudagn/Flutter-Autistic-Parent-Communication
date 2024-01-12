import 'package:get/get.dart';
import './signup_controller.dart';

class signup_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => signup_controller());
  }
}
