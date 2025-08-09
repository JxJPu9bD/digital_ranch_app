import 'package:get/get.dart';
import 'quarantine_record_controller.dart';

class QuarantineRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuarantineRecordController>(() => QuarantineRecordController());
  }
}
