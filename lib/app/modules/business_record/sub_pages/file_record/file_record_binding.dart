import 'package:get/get.dart';
import 'file_record_controller.dart';

class FileRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FileRecordController>(() => FileRecordController());
  }
}
