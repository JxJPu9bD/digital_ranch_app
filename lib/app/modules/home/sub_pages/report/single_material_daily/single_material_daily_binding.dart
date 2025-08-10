import 'package:get/get.dart';
import 'single_material_daily_controller.dart';

class SingleMaterialDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleMaterialDailyController>(() => SingleMaterialDailyController());
  }
}
