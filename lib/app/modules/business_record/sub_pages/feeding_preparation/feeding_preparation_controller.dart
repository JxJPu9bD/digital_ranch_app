import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedingPreparationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '饲喂制备已保存');
      Get.back();
    }
  }
}
