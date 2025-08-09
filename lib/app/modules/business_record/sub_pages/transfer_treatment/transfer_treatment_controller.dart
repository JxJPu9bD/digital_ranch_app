import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferTreatmentController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '转归处理已提交');
      Get.back();
    }
  }
}
