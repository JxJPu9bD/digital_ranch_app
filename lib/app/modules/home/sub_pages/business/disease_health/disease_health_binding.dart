import 'package:get/get.dart';
import 'disease_health_controller.dart';

class DiseaseHealthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiseaseHealthController>(() => DiseaseHealthController());
  }
}
