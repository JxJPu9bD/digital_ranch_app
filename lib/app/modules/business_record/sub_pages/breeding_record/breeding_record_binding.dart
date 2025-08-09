import 'package:get/get.dart';
import 'breeding_record_controller.dart';

class BreedingRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingRecordController>(() => BreedingRecordController());
  }
}
