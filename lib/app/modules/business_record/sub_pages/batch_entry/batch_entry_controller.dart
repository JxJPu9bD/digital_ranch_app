import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BatchEntryController extends GetxController {
  final formData = <String, dynamic>{}.obs;
  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  
  final cattleList = <Map<String, dynamic>>[].obs;
  final selectedCattle = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  void loadInitialData() {
    // TODO: 从API获取初始数据
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () {
      isLoading.value = false;
    });
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      // TODO: 提交表单数据
      Get.snackbar('成功', '批量入场登记成功');
      Get.back();
    }
  }

  void goBack() {
    Get.back();
  }

  void toggleCattleSelection(String cattleId) {
    if (selectedCattle.contains(cattleId)) {
      selectedCattle.remove(cattleId);
    } else {
      selectedCattle.add(cattleId);
    }
  }
}
