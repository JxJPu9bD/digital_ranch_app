import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EarTagReissueController extends GetxController {
  final formData = <String, dynamic>{}.obs;
  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  void loadInitialData() {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () {
      isLoading.value = false;
    });
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.snackbar('成功', '耳标补发成功');
      Get.back();
    }
  }

  void goBack() {
    Get.back();
  }
}
