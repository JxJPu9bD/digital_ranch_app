import 'package:get/get.dart';
import 'immune_record_controller.dart';

class ImmuneRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImmuneRecordController>(() => ImmuneRecordController());
  }
}
