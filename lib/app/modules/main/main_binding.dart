import 'package:get/get.dart';
import 'main_controller.dart';
import '../home/home_controller.dart';
import '../info_query/info_query_controller.dart';
import '../business_record/business_record_controller.dart';
import '../live_monitor/live_monitor_controller.dart';
import '../profile/profile_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<InfoQueryController>(() => InfoQueryController());
    Get.lazyPut<BusinessRecordController>(() => BusinessRecordController());
    Get.lazyPut<LiveMonitorController>(() => LiveMonitorController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
} 