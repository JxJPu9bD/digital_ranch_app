import 'package:get/get.dart';
import 'calving_record_controller.dart';

class CalvingRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalvingRecordController>(() => CalvingRecordController());
  }
}
