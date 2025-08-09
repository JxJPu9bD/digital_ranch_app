import 'package:get/get.dart';
import 'feeding_preparation_controller.dart';

class FeedingPreparationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedingPreparationController>(() => FeedingPreparationController());
  }
}
