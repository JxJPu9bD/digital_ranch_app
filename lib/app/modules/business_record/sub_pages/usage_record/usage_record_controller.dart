import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsageRecordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '领用登记已提交');
      Get.back();
    }
  }
}
