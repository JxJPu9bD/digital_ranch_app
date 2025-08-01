import 'package:get/get.dart';

class InfoQueryController extends GetxController {
  final searchController = RxString('');
  final isLoading = false.obs;
  final businessAlerts = [
    {
      'title': '配种预警',
      'count': '295',
      'icon': 'breeding',
      'color': 0xFF00A651,
    },
    {
      'title': '初检预警',
      'count': '102',
      'icon': 'first_check',
      'color': 0xFF2196F3,
    },
    {
      'title': '复检预警',
      'count': '102',
      'icon': 'recheck',
      'color': 0xFF4CAF50,
    },
    {
      'title': '临产预警',
      'count': '0',
      'icon': 'birth',
      'color': 0xFFF44336,
    },
    {
      'title': '围产预警',
      'count': '225',
      'icon': 'perinatal',
      'color': 0xFF9C27B0,
    },
    {
      'title': '断奶预警',
      'count': '225',
      'icon': 'weaning',
      'color': 0xFF673AB7,
    },
    {
      'title': '复检断奶预警',
      'count': '0',
      'icon': 'weaning_recheck',
      'color': 0xFF3F51B5,
    },
    {
      'title': '疾病治疗',
      'count': '89',
      'icon': 'treatment',
      'color': 0xFF009688,
    },
    {
      'title': '免疫预警',
      'count': '1',
      'icon': 'immune',
      'color': 0xFF00BCD4,
    },
    {
      'title': '检疫预警',
      'count': '0',
      'icon': 'quarantine',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '巡更预警',
      'count': '0',
      'icon': 'patrol',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final businessItems = [
    {
      'title': '犊牛业务',
      'icon': 'calf',
      'color': 0xFFFFB74D,
    },
    {
      'title': '繁育业务',
      'icon': 'breeding',
      'color': 0xFFE57373,
    },
    {
      'title': '疾病健康',
      'icon': 'health',
      'color': 0xFF81C784,
    },
    {
      'title': '牛只档案',
      'icon': 'archive',
      'color': 0xFF64B5F6,
    },
    {
      'title': '巡更查看',
      'icon': 'patrol',
      'color': 0xFF9575CD,
    },
    {
      'title': '生长指标',
      'icon': 'growth',
      'color': 0xFFBA68C8,
    },
  ].obs;

  void onSearch(String value) {
    searchController.value = value;
    // TODO: 实现搜索逻辑
  }

  void scanEarTag() {
    // TODO: 实现耳标扫描功能
  }

  void onAlertTap(Map<String, dynamic> alert) {
    // TODO: 实现预警点击处理
  }

  void onBusinessTap(Map<String, dynamic> business) {
    // TODO: 实现业务点击处理
  }
} 