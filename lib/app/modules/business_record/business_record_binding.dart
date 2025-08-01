import 'package:get/get.dart';
import 'business_record_controller.dart';

class BusinessRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BusinessRecordController>(() => BusinessRecordController());
  }
} 