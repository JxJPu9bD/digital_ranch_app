import 'package:get/get.dart';
import 'breeding_file_controller.dart';

class BreedingFileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedingFileController>(() => BreedingFileController());
  }
}
