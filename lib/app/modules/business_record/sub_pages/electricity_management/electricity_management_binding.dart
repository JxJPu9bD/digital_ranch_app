import 'package:get/get.dart';
import 'electricity_management_controller.dart';

class ElectricityManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectricityManagementController>(() => ElectricityManagementController());
  }
}
