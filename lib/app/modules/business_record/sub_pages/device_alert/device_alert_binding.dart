import 'package:get/get.dart';
import 'device_alert_controller.dart';

class DeviceAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceAlertController>(() => DeviceAlertController());
  }
}
