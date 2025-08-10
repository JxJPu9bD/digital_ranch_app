import 'package:get/get.dart';
import 'consultation_publish_controller.dart';

class ConsultationPublishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultationPublishController>(() => ConsultationPublishController());
  }
}
