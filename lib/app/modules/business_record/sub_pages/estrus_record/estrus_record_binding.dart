import 'package:get/get.dart';
import 'estrus_record_controller.dart';

class EstrusRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstrusRecordController>(() => EstrusRecordController());
  }
}
