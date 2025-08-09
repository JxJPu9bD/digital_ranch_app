import 'package:get/get.dart';
import 'first_check_controller.dart';

class FirstCheckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstCheckController>(() => FirstCheckController());
  }
}
