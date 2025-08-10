import 'package:get/get.dart';
import 'calving_daily_controller.dart';

class CalvingDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalvingDailyController>(() => CalvingDailyController());
  }
}
