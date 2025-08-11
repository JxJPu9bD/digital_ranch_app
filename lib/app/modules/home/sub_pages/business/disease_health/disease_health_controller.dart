import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiseaseHealthController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final totalCount = 0.obs;
  final startDate = DateTime.now().subtract(const Duration(days: 30)).obs;
  final endDate = DateTime.now().obs;
  final isLoading = false.obs;

  // 四个Tab的数据
  final newDiseaseList = <Map<String, String>>[].obs; // 新发疾病
  final treatmentList = <Map<String, String>>[].obs; // 疾病治疗
  final outcomeList = <Map<String, String>>[].obs; // 转归出院
  final quarantineList = <Map<String, String>>[].obs; // 免疫检疫

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
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
      final mock = List.generate(7, (i) => _mockItem(i));
      newDiseaseList.value = mock;
      treatmentList.value = mock;
      outcomeList.value = mock;
      quarantineList.value = mock;
      totalCount.value = mock.length * 4;
    } finally {
      isLoading.value = false;
    }
  }

  Map<String, String> _mockItem(int i) => {
        'earTag': ['2400174', '2401286', '330666', '80000234', '2500624', '2500269', '80000626'][i % 7],
        'disease': ['子宫炎', '肺炎', '外伤', '肺炎', '肺炎', '肺炎', '肺炎'][i % 7],
        'date': formatDate(DateTime.now().subtract(Duration(days: i))),
        'operator': ['姚红城', '王杰', '姚红城', '王杰', '王杰', '王杰', '王杰'][i % 7],
      };

  void goBack() => Get.back();
}
