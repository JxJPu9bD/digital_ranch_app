import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreedingStopController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '停配/解停提交成功');
      Get.back();
    }
  }
}
