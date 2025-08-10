import 'package:get/get.dart';
import 'castration_info_controller.dart';

class CastrationInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CastrationInfoController>(() => CastrationInfoController());
  }
}
