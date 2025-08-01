import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_view.dart';
import '../info_query/info_query_view.dart';
import '../business_record/business_record_view.dart';
import '../live_monitor/live_monitor_view.dart';
import '../profile/profile_view.dart';
import '../../theme/app_theme.dart';
import 'main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.currentIndex.value,
        children: const [
          HomeView(),
          InfoQueryView(),
          BusinessRecordView(),
          LiveMonitorView(),
          ProfileView(),
        ],
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '信息查询',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '业务登记',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor),
            label: '活体监管',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
        onTap: controller.changePage,
      )),
    );
  }
} 