import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstrusRecordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;

  void goBack() => Get.back();

  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '发情登记成功');
      Get.back();
    }
  }
}
