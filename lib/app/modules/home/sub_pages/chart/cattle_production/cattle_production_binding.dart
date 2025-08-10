import 'package:get/get.dart';
import 'cattle_production_controller.dart';

class CattleProductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleProductionController>(() => CattleProductionController());
  }
}
