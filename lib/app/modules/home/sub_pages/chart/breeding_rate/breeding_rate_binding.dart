import 'package:get/get.dart';
import 'breeding_rate_controller.dart';

class BreedingRateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingRateController>(() => BreedingRateController());
  }
}
