import 'package:get/get.dart';
import 'weaning_record_controller.dart';

class WeaningRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeaningRecordController>(() => WeaningRecordController());
  }
}
