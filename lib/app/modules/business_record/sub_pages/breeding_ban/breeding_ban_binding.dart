import 'package:get/get.dart';
import 'breeding_ban_controller.dart';

class BreedingBanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingBanController>(() => BreedingBanController());
  }
}
