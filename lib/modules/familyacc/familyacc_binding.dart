import 'package:get/get.dart';
import './familyacc_controller.dart';

class familyacc_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => familyacc_controller());
  }
}
