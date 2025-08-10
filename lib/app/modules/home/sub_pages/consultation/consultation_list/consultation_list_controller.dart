import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultationListController extends GetxController {
  final searchController = TextEditingController();
  
  // 问诊列表数据
  final consultationList = [].obs;
  
  // 加载状态
  final isLoading = false.obs;
  final hasMore = true.obs;
  final page = 1.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  // 刷新数据
  Future<void> refreshData() async {
    page.value = 1;
    consultationList.clear();
    hasMore.value = true;
    await loadData();
  }

  // 加载数据
  Future<void> loadData() async {
    if (isLoading.value || !hasMore.value) return;
    
    isLoading.value = true;
    try {
      // TODO: 实现数据加载逻辑
      await Future.delayed(const Duration(seconds: 1));
      
      if (page.value == 1) {
        consultationList.clear();
      }
      
      hasMore.value = page.value < 3;
      page.value++;
    } catch (e) {
      print('加载数据失败: $e');
    } finally {
      isLoading.value = false;
    }
  }

  // 搜索
  void search(String keyword) {
    // TODO: 实现搜索逻辑
    refreshData();
  }

  // 发布问诊
  void publishConsultation() {
    Get.toNamed('/home/consultation/publish');
  }

  void goBack() => Get.back();
}
