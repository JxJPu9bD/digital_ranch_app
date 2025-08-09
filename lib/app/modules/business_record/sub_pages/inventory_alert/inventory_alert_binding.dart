import 'package:get/get.dart';
import 'inventory_alert_controller.dart';

class InventoryAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryAlertController>(() => InventoryAlertController());
  }
}
