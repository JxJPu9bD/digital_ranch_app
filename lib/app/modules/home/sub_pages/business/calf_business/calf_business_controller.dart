import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalfBusinessController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final totalCount = 0.obs;
  final startDate = DateTime.now().subtract(const Duration(days: 30)).obs;
  final endDate = DateTime.now().obs;
  final isLoading = false.obs;

  // 三个Tab的数据
  final calvingInfoList = <Map<String, String>>[].obs; // 产犊信息
  final calfInfoList = <Map<String, String>>[].obs; // 犊牛信息
  final weaningInfoList = <Map<String, String>>[].obs; // 断奶信息

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    loadAll();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  Future<void> pickStartDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: startDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      startDate.value = picked;
      await loadAll();
    }
  }

  Future<void> pickEndDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: endDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      endDate.value = picked;
      await loadAll();
    }
  }

  String formatDate(DateTime d) =>
      "${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}";

  Future<void> loadAll() async {
    if (isLoading.value) return;
    isLoading.value = true;
    try {
      // TODO: 使用dio请求接口获取真实数据
      final mock = List.generate(8, (i) => _mockItem(i));
      calvingInfoList.value = mock;
      calfInfoList.value = mock;
      weaningInfoList.value = mock;
      totalCount.value = mock.length * 3;
    } finally {
      isLoading.value = false;
    }
  }

  Map<String, String> _mockItem(int i) => {
        'earTag': ['80001059','80001055','80001054','80001043','80001041','80001037','80001033','80001021'][i % 8],
        'group': '栅牛04-4',
        'date': formatDate(DateTime.now()),
        'operator': '谢成雨',
      };

  void goBack() => Get.back();
}
