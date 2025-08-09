import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalfRecordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '犊牛登记成功');
      Get.back();
    }
  }
}
