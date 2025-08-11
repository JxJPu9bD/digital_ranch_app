import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreedingBusinessController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final totalCount = 0.obs;
  final startDate = DateTime.now().subtract(const Duration(days: 30)).obs;
  final endDate = DateTime.now().obs;

  final isLoading = false.obs;

  // 六个Tab的数据列表
  final estrusList = <Map<String, String>>[].obs; // 发情信息
  final breedingList = <Map<String, String>>[].obs; // 配种信息
  final firstCheckList = <Map<String, String>>[].obs; // 初检信息
  final recheckList = <Map<String, String>>[].obs; // 复检信息
  final abortionList = <Map<String, String>>[].obs; // 流产信息
  final banUnbanList = <Map<String, String>>[].obs; // 禁配解禁信息

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 6, vsync: this);
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
      // 这里填充一些示例数据以便页面展示
      final mock = List.generate(6, (i) => _mockItem(i));
      estrusList.value = mock;
      breedingList.value = mock;
      firstCheckList.value = mock;
      recheckList.value = mock;
      abortionList.value = mock;
      banUnbanList.value = mock;
      totalCount.value = mock.length * 6;
    } finally {
      isLoading.value = false;
    }
  }

  Map<String, String> _mockItem(int i) => {
        'earTag': ['354731', '59130', '38871', '316443', '336517', '20678'][i % 6],
        'group': ['国产牛02-2', '泌乳牛07-1', '国产牛02-2', '泌乳牛04-1', '国产牛02-2', '国产牛01-2'][i % 6],
        'date': formatDate(DateTime.now()),
        'operator': '吴永红',
      };

  List<Obx> getTabViews() {
    final lists = [
      estrusList,
      breedingList,
      firstCheckList,
      recheckList,
      abortionList,
      banUnbanList,
    ];
    return lists
        .map((rx) => Obx(() => rx.isEmpty
            ? const SizedBox()
            : const SizedBox()))
        .toList();
  }

  void goBack() => Get.back();
}
