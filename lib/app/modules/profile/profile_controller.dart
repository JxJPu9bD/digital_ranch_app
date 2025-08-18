import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class ProfileController extends GetxController {
  final userName = '-'.obs;
  final companyName = '-'.obs;
  final lastUpdateTime = '-'.obs;

  final menuItems = [
    {
      'title': '个人信息',
      'icon': 'person',
      'color': 0xFF4CAF50,
      'route': Routes.USER_INFO,
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
    if (item['route'] != null) {
      Get.toNamed(item['route']);
    }
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