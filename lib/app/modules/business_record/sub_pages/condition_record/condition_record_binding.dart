import 'package:get/get.dart';
import 'condition_record_controller.dart';

class ConditionRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConditionRecordController>(() => ConditionRecordController());
  }
}
