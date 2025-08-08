import 'package:get/get.dart';
import 'entry_record_controller.dart';

class EntryRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EntryRecordController>(() => EntryRecordController());
  }
}
