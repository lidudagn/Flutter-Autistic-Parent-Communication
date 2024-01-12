import 'package:autism_project/modules/notification/notification_controller.dart';
import 'package:get/get.dart';

class NotificationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NOtificationController());
  }
}
