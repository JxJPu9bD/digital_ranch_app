import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeaveSummaryController extends GetxController {
  void goBack() => Get.back();

  // 用于加载离场汇总数据
  void loadData() {
    // TODO: 实现数据加载逻辑
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }
}
