import 'package:get/get.dart';
import 'expiry_alert_controller.dart';

class ExpiryAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpiryAlertController>(() => ExpiryAlertController());
  }
}
