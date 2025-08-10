import 'package:get/get.dart';
import 'leave_summary_controller.dart';

class LeaveSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeaveSummaryController>(() => LeaveSummaryController());
  }
}
