import 'package:get/get.dart';
import 'recommended_controller.dart';

class RecommendedUserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedUserController());
  }
}
