import 'package:get/get.dart';
import 'live_monitor_controller.dart';

class LiveMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiveMonitorController>(() => LiveMonitorController());
  }
} 