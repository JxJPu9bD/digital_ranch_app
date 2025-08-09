import 'package:get/get.dart';
import 'recheck_controller.dart';

class RecheckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecheckController>(() => RecheckController());
  }
}
