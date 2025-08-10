import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferSummaryController extends GetxController {
  void goBack() => Get.back();

  void loadData() {
    // TODO: 实现数据加载逻辑
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }
}
