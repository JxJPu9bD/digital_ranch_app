import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiseaseReportController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '疾病揭发已提交');
      Get.back();
    }
  }
}
