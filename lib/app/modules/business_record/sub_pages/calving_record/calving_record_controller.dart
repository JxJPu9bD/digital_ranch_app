import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalvingRecordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      Get.snackbar('成功', '产犊登记成功');
      Get.back();
    }
  }
}
