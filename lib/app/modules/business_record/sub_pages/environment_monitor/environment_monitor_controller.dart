import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvironmentMonitorController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '环境监测设置已保存');
      Get.back();
    }
  }
}
