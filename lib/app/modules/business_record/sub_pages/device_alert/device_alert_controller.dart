import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeviceAlertController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '设备预警设置已保存');
      Get.back();
    }
  }
}
