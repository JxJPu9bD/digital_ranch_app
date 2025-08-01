import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentRanch = '中禾恒瑞（内蒙）'.obs;
  final totalCattle = 7329.obs;
  final totalRanches = 1.obs;
  final newCattle = 0.obs;
  final leavingCattle = 0.obs;
  
  final taskStats = {
    '待配': 0.obs,
    '初检': 99.obs,
    '复检': 99.obs,
    '待产': 0.obs,
    '疾病治疗': 89.obs,
    '断奶': 99.obs,
    '发情': 99.obs,
    '配种': 99.obs,
    '孕检': 99.obs,
    '流产': 11.obs,
    '疾病': 86.obs,
    '产犊': 9.obs,
  }.obs;

  void updateRanchStats() {
    // TODO: 实现从API获取牧场统计数据的逻辑
  }

  @override
  void onInit() {
    super.onInit();
    updateRanchStats();
  }
} 