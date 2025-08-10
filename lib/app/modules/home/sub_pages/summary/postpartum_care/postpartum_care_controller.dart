import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostpartumCareController extends GetxController {
  final formKey = GlobalKey<FormState>();
  
  void goBack() => Get.back();

  // 用于加载产后护理汇总数据
  void loadData() {
    // TODO: 实现数据加载逻辑
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }
}
