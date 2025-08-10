import 'package:get/get.dart';
import 'calving_summary_controller.dart';

class CalvingSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalvingSummaryController>(() => CalvingSummaryController());
  }
}
