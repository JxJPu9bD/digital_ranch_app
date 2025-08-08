import 'package:get/get.dart';
import 'ear_tag_reissue_controller.dart';

class EarTagReissueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EarTagReissueController>(() => EarTagReissueController());
  }
}
