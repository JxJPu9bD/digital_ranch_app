import 'package:get/get.dart';
import 'breeding_stop_controller.dart';

class BreedingStopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingStopController>(() => BreedingStopController());
  }
}
