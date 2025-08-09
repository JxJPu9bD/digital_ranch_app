import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TroughMonitorController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '水槽监测设置已保存');
      Get.back();
    }
  }
}
