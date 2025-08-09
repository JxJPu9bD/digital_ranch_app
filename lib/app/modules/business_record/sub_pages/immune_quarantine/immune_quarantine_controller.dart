import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImmuneQuarantineController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '免疫检疫已提交');
      Get.back();
    }
  }
}
