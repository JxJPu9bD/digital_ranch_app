import 'package:get/get.dart';

class UsageReviewController extends GetxController {
  void goBack() => Get.back();
  void approve() { Get.snackbar('成功', '领用审核通过'); Get.back(); }
  void reject() { Get.snackbar('已拒绝', '领用审核驳回'); Get.back(); }
}
