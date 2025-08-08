import 'package:get/get.dart';

class ProfileController extends GetxController {
  final userName = '张磊'.obs;
  final companyName = '中禾恒瑞（内蒙古）农牧业发展有限公司'.obs;
  final lastUpdateTime = '2025-07-25 11:09:0'.obs;

  final menuItems = [
    {
      'title': '个人信息',
      'icon': 'person',
      'color': 0xFF4CAF50,
      'route': '/profile/info',
    },
    {
      'title': '修改密码',
      'icon': 'password',
      'color': 0xFF4CAF50,
      'route': '/profile/password',
    },
    {
      'title': '参数配置',
      'icon': 'settings',
      'color': 0xFF4CAF50,
      'route': '/profile/settings',
    },
    {
      'title': '电池信息',
      'icon': 'battery',
      'color': 0xFF4CAF50,
      'route': '/profile/battery',
    },
    {
      'title': '网络配置',
      'icon': 'network',
      'color': 0xFF4CAF50,
      'route': '/profile/network',
    },
    {
      'title': '设备校时',
      'icon': 'time',
      'color': 0xFF4CAF50,
      'route': '/profile/time',
    },
    {
      'title': '检测升级',
      'icon': 'update',
      'color': 0xFF4CAF50,
      'route': '/profile/update',
    },
    {
      'title': '更新缓存数据',
      'icon': 'cache',
      'color': 0xFF4CAF50,
      'route': '/profile/cache',
      'showTime': true,
    },
  ].obs;

  void onMenuItemTap(Map<String, dynamic> item) {
    // TODO: 实现菜单项点击处理
    Get.snackbar('提示', '点击了${item['title']}');
  }

  void logout() {
    // TODO: 实现退出登录逻辑
    Get.offAllNamed('/login');
  }

  void switchCompany() {
    // TODO: 实现切换公司逻辑
    Get.snackbar('提示', '切换公司');
  }
} 