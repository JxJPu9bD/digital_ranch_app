import 'package:get/get.dart';
import 'inventory_query_controller.dart';

class InventoryQueryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryQueryController>(() => InventoryQueryController());
  }
}
