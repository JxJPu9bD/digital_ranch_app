import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StorageInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '入库登记已提交');
      Get.back();
    }
  }
}
