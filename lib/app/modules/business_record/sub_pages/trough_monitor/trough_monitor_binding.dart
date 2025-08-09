import 'package:get/get.dart';
import 'trough_monitor_controller.dart';

class TroughMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TroughMonitorController>(() => TroughMonitorController());
  }
}
