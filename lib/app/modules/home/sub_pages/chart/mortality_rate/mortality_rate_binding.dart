import 'package:get/get.dart';
import 'mortality_rate_controller.dart';

class MortalityRateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MortalityRateController>(() => MortalityRateController());
  }
}
