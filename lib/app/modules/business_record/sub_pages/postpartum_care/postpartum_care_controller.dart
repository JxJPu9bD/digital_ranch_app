import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostpartumCareController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '产后护理已提交');
      Get.back();
    }
  }
}
