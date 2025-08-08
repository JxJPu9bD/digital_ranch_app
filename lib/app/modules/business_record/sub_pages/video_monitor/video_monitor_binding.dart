import 'package:get/get.dart';
import 'video_monitor_controller.dart';

class VideoMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoMonitorController>(() => VideoMonitorController());
  }
}
