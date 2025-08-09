import 'package:get/get.dart';
import 'feeding_schedule_controller.dart';

class FeedingScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedingScheduleController>(() => FeedingScheduleController());
  }
}
