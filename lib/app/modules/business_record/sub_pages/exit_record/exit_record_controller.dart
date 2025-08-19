import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:image_picker/image_picker.dart';
import '../../../../services/business_service.dart';

class ExitRecordController extends getx.GetxController {
  final _businessService = BusinessService();
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;

  final formData = getx.Rx<Map<String, dynamic>>({
    'cattleNo': '', // 离场牛号
    'exitType': '出售', // 离场方式
    'exitReason': '出售', // 离场原因
    'remark': '', // 处理意见
    'isInitiative': false, // 主动淘汰
    'weight': '', // 体重
    'chestGirth': '', // 胸体重
    'priceWithoutTax': '', // 单价(不含税)
    'priceWithTax': '', // 单价(含税)
    'amountWithoutTax': '', // 离场金额(不含税)
    'amountWithTax': '', // 离场金额(含税)
    'buyer': '内蒙', // 买家
    'taxRate': '', // 税点
  });

  final selectedImage = getx.Rx<File?>(null);

  void updateFormData(String key, dynamic value) {
    final newData = Map<String, dynamic>.from(formData.value);
    newData[key] = value;
    formData.value = newData;
  }

  void pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      isLoading.value = true;

      try {
        await _businessService.submitExitRecord(formData.value);
        getx.Get.snackbar('成功', '离场登记成功');
        getx.Get.back();
      } catch (e) {
        getx.Get.snackbar('错误', '请求失败: $e');
      } finally {
        isLoading.value = false;
      }
    }
  }

  void goBack() {
    getx.Get.back();
  }
}