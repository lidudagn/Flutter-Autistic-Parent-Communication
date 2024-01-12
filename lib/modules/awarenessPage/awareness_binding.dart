import 'package:get/get.dart';
import 'package:autism_project/modules/awarenessPage/awareness_controller.dart';

class awareness_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => awareness_controller());
  }
}
