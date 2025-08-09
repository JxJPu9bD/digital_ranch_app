import 'package:get/get.dart';
import 'storage_in_review_controller.dart';

class StorageInReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageInReviewController>(() => StorageInReviewController());
  }
}
