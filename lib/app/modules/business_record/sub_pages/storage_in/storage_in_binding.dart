import 'package:get/get.dart';
import 'storage_in_controller.dart';

class StorageInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageInController>(() => StorageInController());
  }
}
