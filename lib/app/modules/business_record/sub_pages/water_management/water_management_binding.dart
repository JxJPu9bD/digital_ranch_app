import 'package:get/get.dart';
import 'water_management_controller.dart';

class WaterManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaterManagementController>(() => WaterManagementController());
  }
}
