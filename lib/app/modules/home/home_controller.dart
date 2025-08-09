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

  // 首页分区：数据分析
  final List<Map<String, String>> dataAnalysisItems = const [
    {'title': '牛群结构', 'icon': 'ic_nqjg'},
    {'title': '牛群分析', 'icon': 'ic_nqfx'},
  ];

  // 首页分区：数据报表
  final List<Map<String, String>> dataReportItems = const [
    {'title': '产犊汇总报表', 'icon': 'ic_cdhzbb'},
    {'title': '产犊日报表', 'icon': 'ic_cdrbb'},
    {'title': '单项物料日报表', 'icon': 'ic_dxwlrbb'},
    {'title': '繁育日报表', 'icon': 'ic_fyrbb'},
    {'title': '牛群结构报表', 'icon': 'ic_nqjgbb'},
    {'title': '牛群日报表', 'icon': 'ic_nqrbb'},
    {'title': '牛群预期报表', 'icon': 'ic_nqyqbb'},
    {'title': '物料日报表', 'icon': 'ic_wlrbb'},
  ];

  // 首页分区：数据汇总表
  final List<Map<String, String>> dataSummaryItems = const [
    {'title': '产后护理', 'icon': 'ic_chhl'},
    {'title': '离场汇总', 'icon': 'ic_lchz'},
    {'title': '去势信息', 'icon': 'ic_qsxx'},
    {'title': '确诊治疗', 'icon': 'ic_qzzl'},
    {'title': '生产数据', 'icon': 'ic_scsj'},
    {'title': '消毒信息', 'icon': 'ic_xdxx'},
    {'title': '转舍汇总', 'icon': 'ic_zshz'},
  ];

  // 首页分区：结构图表
  final List<Map<String, String>> structureChartItems = const [
    {'title': '环境监测', 'icon': 'ic_hjjc'},
    {'title': '疾病治疗数据', 'icon': 'ic_jbzlsj'},
    {'title': '近五年疾病率', 'icon': 'ic_jwnjbl'},
    {'title': '进出场统计', 'icon': 'ic_jccsj'},
    {'title': '牛只生产数据', 'icon': 'ic_nzscsj'},
    {'title': '近一年死亡率', 'icon': 'ic_jynswl'},
  ];

  void onHomeItemTap(Map<String, String> item) {
    // TODO: 根据 item 映射到具体路由
    // 例如：Get.toNamed(Routes.SOME_PAGE);
    Get.snackbar('提示', '点击了 ${item['title']}');
  }

  void updateRanchStats() {
    // TODO: 实现从API获取牧场统计数据的逻辑
  }

  @override
  void onInit() {
    super.onInit();
    updateRanchStats();
  }
} 