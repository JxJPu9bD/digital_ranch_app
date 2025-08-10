import 'package:get/get.dart';
import 'consultation_list_controller.dart';

class ConsultationListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultationListController>(() => ConsultationListController());
  }
}
