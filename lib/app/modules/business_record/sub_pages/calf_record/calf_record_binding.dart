import 'package:get/get.dart';
import 'calf_record_controller.dart';

class CalfRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalfRecordController>(() => CalfRecordController());
  }
}
