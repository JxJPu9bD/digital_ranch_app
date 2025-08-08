import 'package:get/get.dart';
import 'growth_record_controller.dart';

class GrowthRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GrowthRecordController>(() => GrowthRecordController());
  }
}
