import 'package:get/get.dart';
import 'calf_business_controller.dart';

class CalfBusinessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalfBusinessController>(() => CalfBusinessController());
  }
}
