import 'package:get/get.dart';
import 'usage_review_controller.dart';

class UsageReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsageReviewController>(() => UsageReviewController());
  }
}
