import 'package:get/get.dart';
import 'perinatal_record_controller.dart';

class PerinatalRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerinatalRecordController>(() => PerinatalRecordController());
  }
}
