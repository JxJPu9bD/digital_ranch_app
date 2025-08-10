import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsListController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final currentTab = 0.obs;
  
  // 新闻列表数据
  final newsList = [].obs;
  
  // 加载状态
  final isLoading = false.obs;
  final hasMore = true.obs;
  final page = 1.obs;
  
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    tabController.addListener(() {
      currentTab.value = tabController.index;
      // 切换标签时重新加载数据
      refreshData();
    });
    loadData();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  // 刷新数据
  Future<void> refreshData() async {
    page.value = 1;
    newsList.clear();
    hasMore.value = true;
    await loadData();
  }

  // 加载数据
  Future<void> loadData() async {
    if (isLoading.value || !hasMore.value) return;
    
    isLoading.value = true;
    try {
      // TODO: 实现数据加载逻辑
      // 模拟数据
      await Future.delayed(const Duration(seconds: 1));
      final List mockData = [
        {
          'title': '乌兰浩特市：产业合作解锁乡村振兴新密码',
          'url': 'http://nmg.news.cn/20250328/123456',
          'date': '2025-03-28 15:46:08',
          'type': currentTab.value == 0 ? '公告' : currentTab.value == 1 ? '宣传' : '专家文章'
        },
        {
          'title': '兴安盟推动产业链创新链深度融合',
          'url': 'http://nmg.news.cn/20250328/654321',
          'date': '2025-03-28 15:45:17',
          'type': currentTab.value == 0 ? '公告' : currentTab.value == 1 ? '宣传' : '专家文章'
        }
      ];
      
      if (page.value == 1) {
        newsList.value = mockData;
      } else {
        newsList.addAll(mockData);
      }
      
      // 模拟是否还有更多数据
      hasMore.value = page.value < 3;
      page.value++;
    } catch (e) {
      print('加载数据失败: $e');
    } finally {
      isLoading.value = false;
    }
  }

  // 打开新闻详情
  void openNewsDetail(String url) {
    Get.toNamed('/home/news/detail', arguments: {'url': url});
  }
}
