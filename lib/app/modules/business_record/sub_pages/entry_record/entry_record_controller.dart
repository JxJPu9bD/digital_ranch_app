import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:image_picker/image_picker.dart';
import '../../../../services/business_service.dart';

class EntryRecordController extends getx.GetxController {
  final _businessService = BusinessService();
  void updateFormData(String key, String value) {
    final newData = Map<String, dynamic>.from(formData.value);
    newData[key] = value;
    formData.value = newData;
  }
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;

  final formData = getx.Rx<Map<String, dynamic>>({
    'sourceFarmShortTag': '',
    'earTag': '',
    'farmInternalId': '',
    'penName': '泌乳牛02-3',
    'gender': '公牛',
    'parity': '0',
    'breedingType': '育种牛',
    'growthStage': '犊牛',
    'reproductionStatus': '尚未配种',
    'birthDate': '2025-08-19',
    'breed': '和牛',
    'coatColor': '黑',
    'hornStatus': '无牛角',
    'entryWeight': '',
    'insuranceNumber': '',
    'regulatoryEarTag': '',
    'projectSerialNumber': '',
    'projectType': '有源资产标',
    'entryPrice': '',
    'supplierName': '内蒙',
  });

  final selectedImage = getx.Rx<File?>(null);

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
        await _businessService.submitEntryRecord(
          formData.value,
          selectedImage.value?.path,
        );
        
        getx.Get.snackbar('成功', '入场登记成功');
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