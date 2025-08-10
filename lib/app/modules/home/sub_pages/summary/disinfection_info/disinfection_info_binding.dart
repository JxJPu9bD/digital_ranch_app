import 'package:get/get.dart';
import 'disinfection_info_controller.dart';

class DisinfectionInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisinfectionInfoController>(() => DisinfectionInfoController());
  }
}
