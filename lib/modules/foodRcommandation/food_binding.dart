import 'package:get/get.dart';
import 'package:autism_project/modules/foodRcommandation/food_controller.dart';

class food_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => food_controller());
  }
}
