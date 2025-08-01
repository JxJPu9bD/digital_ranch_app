import 'package:get/get.dart';

class ProfileController extends GetxController {
  final userName = 'Admin'.obs;
  final userRole = '管理员'.obs;
  final userAvatar = ''.obs;

  final menuItems = [
    {'title': '个人信息', 'icon': 'person', 'route': '/profile/info'},
    {'title': '系统设置', 'icon': 'settings', 'route': '/profile/settings'},
    {'title': '消息通知', 'icon': 'notifications', 'route': '/profile/notifications'},
    {'title': '帮助中心', 'icon': 'help', 'route': '/profile/help'},
    {'title': '关于我们', 'icon': 'info', 'route': '/profile/about'},
  ];

  void logout() {
    // TODO: 实现登出逻辑
    Get.offAllNamed('/login');
  }

  void navigateToMenuItem(String route) {
    // TODO: 实现菜单项导航
    Get.toNamed(route);
  }
} 