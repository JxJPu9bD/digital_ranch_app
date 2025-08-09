import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedingScheduleController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '车次饲喂已保存');
      Get.back();
    }
  }
}
