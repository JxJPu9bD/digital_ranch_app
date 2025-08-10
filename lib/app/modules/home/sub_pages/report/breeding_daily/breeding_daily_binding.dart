import 'package:get/get.dart';
import 'breeding_daily_controller.dart';

class BreedingDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingDailyController>(() => BreedingDailyController());
  }
}
