import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuarantineRecordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '检疫登记已提交');
      Get.back();
    }
  }
}
