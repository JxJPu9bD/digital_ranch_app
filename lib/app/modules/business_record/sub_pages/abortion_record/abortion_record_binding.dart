import 'package:get/get.dart';
import 'abortion_record_controller.dart';

class AbortionRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbortionRecordController>(() => AbortionRecordController());
  }
}
