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
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/tab_home_no.png', width: 21, height: 21),
            activeIcon: Image.asset('assets/icons/tab_home_sel.png', width: 21, height: 21),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/tab_xxcx_no.png', width: 21, height: 21),
            activeIcon: Image.asset('assets/icons/tab_xxcx_sel.png', width: 21, height: 21),
            label: '信息查询',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/tab_ywdj_no.png', width: 21, height: 21),
            activeIcon: Image.asset('assets/icons/tab_ywdj_sel.png', width: 21, height: 21),
            label: '业务登记',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/tab_htjg_no.png', width: 21, height: 21),
            activeIcon: Image.asset('assets/icons/tab_htjg_sel.png', width: 21, height: 21),
            label: '活体监管',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/tab_person_no.png', width: 21, height: 21),
            activeIcon: Image.asset('assets/icons/tab_person_sel.png', width: 21, height: 21),
            label: '我的',
          ),
        ],
        onTap: controller.changePage,
      )),
    );
  }
} 