import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterManagementController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '用水管理设置已保存');
      Get.back();
    }
  }
}
