import 'package:get/get.dart';

class LiveMonitorController extends GetxController {
  final passiveCardItems = [
    {
      'title': '牛群打卡',
      'icon': 'ic_nqdk',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final activeCardItems = [
    {
      'title': '更换登记',
      'icon': 'ic_ghdj',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '基站登记',
      'icon': 'ic_jzdj',
      'color': 0xFF2196F3,
    },
    {
      'title': '解绑登记',
      'icon': 'ic_jbdj',
      'color': 0xFF9C27B0,
    },
    {
      'title': '佩戴查看',
      'icon': 'ic_pdck',
      'color': 0xFFF44336,
    },
    {
      'title': '佩戴登记',
      'icon': 'ic_pddj',
      'color': 0xFF4CAF50,
    },
  ].obs;

  void onPassiveCardTap(Map<String, dynamic> item) {
    // TODO: 实现无源打卡项点击处理
    Get.snackbar('提示', '点击了${item['title']}');
  }

  void onActiveCardTap(Map<String, dynamic> item) {
    // TODO: 实现有源打卡项点击处理
    Get.snackbar('提示', '点击了${item['title']}');
  }
} 