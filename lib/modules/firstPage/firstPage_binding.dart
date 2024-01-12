import 'package:get/get.dart';
import 'package:autism_project/modules/firstPage/firstPage_controller.dart';

class firstPage_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => firstPage_controller());
  }
}
