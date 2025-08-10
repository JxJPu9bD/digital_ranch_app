import 'package:get/get.dart';
import 'disease_treatment_controller.dart';

class DiseaseTreatmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiseaseTreatmentController>(() => DiseaseTreatmentController());
  }
}
