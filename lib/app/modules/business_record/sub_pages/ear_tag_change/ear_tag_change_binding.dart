import 'package:get/get.dart';
import 'ear_tag_change_controller.dart';

class EarTagChangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EarTagChangeController>(() => EarTagChangeController());
  }
}
