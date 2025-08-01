import 'package:get/get.dart';
import 'info_query_controller.dart';

class InfoQueryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoQueryController>(() => InfoQueryController());
  }
} 