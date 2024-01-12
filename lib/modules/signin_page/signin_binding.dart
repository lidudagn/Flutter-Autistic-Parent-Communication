import 'package:get/get.dart';
import './signin_controller.dart';

class signin_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => signin_controller());
  }
}
