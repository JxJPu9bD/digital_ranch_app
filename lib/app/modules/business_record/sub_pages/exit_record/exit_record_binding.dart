import 'package:get/get.dart';
import 'exit_record_controller.dart';

class ExitRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExitRecordController>(() => ExitRecordController());
  }
}
