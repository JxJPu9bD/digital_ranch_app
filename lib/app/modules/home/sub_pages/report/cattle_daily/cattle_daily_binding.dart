import 'package:get/get.dart';
import 'cattle_daily_controller.dart';

class CattleDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleDailyController>(() => CattleDailyController());
  }
}
