import 'package:get/get.dart';
import './symptom_controller.dart';

class symptom_Bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => symptom_controller());
  }
}
