import 'package:get/get.dart';
import 'device_binding_controller.dart';

class DeviceBindingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceBindingController>(() => DeviceBindingController());
  }
}
