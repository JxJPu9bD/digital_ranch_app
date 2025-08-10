import 'package:get/get.dart';
import 'cattle_structure_controller.dart';

class CattleStructureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleStructureController>(() => CattleStructureController());
  }
}
