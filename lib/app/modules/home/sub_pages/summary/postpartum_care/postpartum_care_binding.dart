import 'package:get/get.dart';
import 'postpartum_care_controller.dart';

class PostpartumCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostpartumCareController>(() => PostpartumCareController());
  }
}
