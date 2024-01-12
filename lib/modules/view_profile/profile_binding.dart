import 'package:get/get.dart';
import './profile_controller.dart';

class profile_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => profile_controller());
  }
}
