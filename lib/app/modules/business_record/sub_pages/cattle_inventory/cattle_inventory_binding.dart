import 'package:get/get.dart';
import 'cattle_inventory_controller.dart';

class CattleInventoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleInventoryController>(() => CattleInventoryController());
  }
}
