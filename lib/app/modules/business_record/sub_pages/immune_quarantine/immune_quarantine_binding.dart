import 'package:get/get.dart';
import 'immune_quarantine_controller.dart';

class ImmuneQuarantineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImmuneQuarantineController>(() => ImmuneQuarantineController());
  }
}
