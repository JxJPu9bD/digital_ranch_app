import 'package:get/get.dart';
import 'batch_entry_controller.dart';

class BatchEntryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BatchEntryController>(() => BatchEntryController());
  }
}
