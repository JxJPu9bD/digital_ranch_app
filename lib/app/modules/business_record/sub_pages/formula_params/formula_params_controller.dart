import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormulaParamsController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '配方参数已保存');
      Get.back();
    }
  }
}
