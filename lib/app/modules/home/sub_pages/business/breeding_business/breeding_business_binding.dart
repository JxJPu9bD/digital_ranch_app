import 'package:get/get.dart';
import 'breeding_business_controller.dart';

class BreedingBusinessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingBusinessController>(() => BreedingBusinessController());
  }
}
