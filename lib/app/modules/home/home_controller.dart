import 'package:get/get.dart';
import '../../routes/app_pages.dart';

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

  final List<Map<String, String>> dataAnalysisItems = const [
    {'title': '牛群结构', 'icon': 'ic_nqjg', 'route': Routes.HOME_CATTLE_STRUCTURE},
    {'title': '牛群分析', 'icon': 'ic_nqfx', 'route': Routes.HOME_CATTLE_ANALYSIS},
  ];

  final List<Map<String, String>> dataReportItems = const [
    {'title': '产犊汇总报表', 'icon': 'ic_cdhzbb', 'route': Routes.HOME_CALVING_SUMMARY_REPORT},
    {'title': '产犊日报表', 'icon': 'ic_cdrbb', 'route': Routes.HOME_CALVING_DAILY_REPORT},
    {'title': '单项物料日报表', 'icon': 'ic_dxwlrbb', 'route': Routes.HOME_SINGLE_MATERIAL_DAILY_REPORT},
    {'title': '繁育日报表', 'icon': 'ic_fyrbb', 'route': Routes.HOME_BREEDING_DAILY_REPORT},
    {'title': '牛群结构报表', 'icon': 'ic_nqjgbb', 'route': Routes.HOME_CATTLE_STRUCTURE_REPORT},
    {'title': '牛群日报表', 'icon': 'ic_nqrbb', 'route': Routes.HOME_CATTLE_DAILY_REPORT},
    {'title': '牛群预测报表', 'icon': 'ic_nqycbb', 'route': Routes.HOME_CATTLE_FORECAST_REPORT},
  ];

  final List<Map<String, String>> dataSummaryItems = const [
    {'title': '产后护理', 'icon': 'ic_chhl', 'route': Routes.HOME_POSTPARTUM_CARE_SUMMARY},
    {'title': '离场汇总', 'icon': 'ic_lchz', 'route': Routes.HOME_LEAVE_SUMMARY},
    {'title': '去势信息', 'icon': 'ic_qsxx', 'route': Routes.HOME_CASTRATION_INFO},
    {'title': '确诊治疗', 'icon': 'ic_qzzl', 'route': Routes.HOME_DIAGNOSIS_TREATMENT_SUMMARY},
    {'title': '生产数据', 'icon': 'ic_scsj', 'route': Routes.HOME_PRODUCTION_DATA},
    {'title': '消毒信息', 'icon': 'ic_xdxx', 'route': Routes.HOME_DISINFECTION_INFO},
    {'title': '转舍汇总', 'icon': 'ic_zshz', 'route': Routes.HOME_TRANSFER_SUMMARY},
  ];

  final List<Map<String, String>> structureChartItems = const [
    {'title': '环境监测', 'icon': 'ic_hjjc', 'route': Routes.HOME_ENV_MONITOR_CHART},
    {'title': '疾病治疗数据', 'icon': 'ic_jbzlsj', 'route': Routes.HOME_DISEASE_TREATMENT_DATA},
    {'title': '近五年繁殖率', 'icon': 'ic_jwnfzl', 'route': Routes.HOME_FIVE_YEAR_BREEDING_RATE},
    {'title': '进出场统计', 'icon': 'ic_jcctj', 'route': Routes.HOME_INOUT_STATISTICS},
    {'title': '牛只生产数据', 'icon': 'ic_nzscsj', 'route': Routes.HOME_CATTLE_PRODUCTION_DATA},
    {'title': '近一年死亡率', 'icon': 'ic_jynstl', 'route': Routes.HOME_ONE_YEAR_MORTALITY},
  ];

  void onHomeItemTap(Map<String, String> item) {
    final route = item['route'];
    if (route != null && route.isNotEmpty) {
      Get.toNamed(route, arguments: {'title': item['title'] ?? '', 'icon': item['icon'] ?? ''});
    } else {
      Get.snackbar('提示', '功能开发中');
    }
  }

  void updateRanchStats() {}

  @override
  void onInit() {
    super.onInit();
    updateRanchStats();
  }
} 