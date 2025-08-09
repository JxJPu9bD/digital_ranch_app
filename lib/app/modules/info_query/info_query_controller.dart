import 'package:get/get.dart';

class InfoQueryController extends GetxController {
  final searchController = RxString('');
  final isLoading = false.obs;
  final businessAlerts = [
    {
      'title': '配种预警',
      'count': '295',
      'icon': 'ic_pzyj',
      'color': 0xFF00A651,
    },
    {
      'title': '初检预警',
      'count': '102',
      'icon': 'ic_cjyj',
      'color': 0xFF2196F3,
    },
    {
      'title': '复检预警',
      'count': '102',
      'icon': 'ic_fjyj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '临产预警',
      'count': '0',
      'icon': 'ic_lcyj',
      'color': 0xFFF44336,
    },
    {
      'title': '围产预警',
      'count': '225',
      'icon': 'ic_wcyj',
      'color': 0xFF9C27B0,
    },
    {
      'title': '断奶预警',
      'count': '225',
      'icon': 'ic_dnyj',
      'color': 0xFF673AB7,
    },
    {
      'title': '复检断奶预警',
      'count': '0',
      'icon': 'ic_fjdnyj',
      'color': 0xFF3F51B5,
    },
    {
      'title': '疾病治疗',
      'count': '89',
      'icon': 'ic_jbzl',
      'color': 0xFF009688,
    },
    {
      'title': '免疫预警',
      'count': '1',
      'icon': 'ic_myyj',
      'color': 0xFF00BCD4,
    },
    {
      'title': '检疫预警',
      'count': '0',
      'icon': 'ic_jyyj',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '巡更预警',
      'count': '0',
      'icon': 'ic_xgyj',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final businessItems = [
    {
      'title': '犊牛业务',
      'icon': 'ic_dnyw',
      'color': 0xFFFFB74D,
    },
    {
      'title': '繁育业务',
      'icon': 'ic_fyyw',
      'color': 0xFFE57373,
    },
    {
      'title': '疾病健康',
      'icon': 'ic_jbjk',
      'color': 0xFF81C784,
    },
    {
      'title': '牛只档案',
      'icon': 'ic_nzda',
      'color': 0xFF64B5F6,
    },
    {
      'title': '巡更查看',
      'icon': 'ic_xgck',
      'color': 0xFF9575CD,
    },
    {
      'title': '生长指标',
      'icon': 'ic_szzb',
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