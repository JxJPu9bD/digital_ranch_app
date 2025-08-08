import 'package:get/get.dart';
import 'disinfection_record_controller.dart';

class DisinfectionRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisinfectionRecordController>(() => DisinfectionRecordController());
  }
}
