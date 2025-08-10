import 'package:get/get.dart';
import 'environment_monitor_controller.dart';

class EnvironmentMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnvironmentMonitorController>(() => EnvironmentMonitorController());
  }
}
