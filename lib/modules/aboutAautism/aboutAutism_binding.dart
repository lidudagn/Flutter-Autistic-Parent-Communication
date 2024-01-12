import 'package:get/get.dart';
import 'package:autism_project/modules/aboutAautism/aboutAutism_controller.dart';

class aboutAutism_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => aboutAutism_controller());
  }
}
