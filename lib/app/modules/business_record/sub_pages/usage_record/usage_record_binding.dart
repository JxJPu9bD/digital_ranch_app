import 'package:get/get.dart';
import 'usage_record_controller.dart';

class UsageRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsageRecordController>(() => UsageRecordController());
  }
}
