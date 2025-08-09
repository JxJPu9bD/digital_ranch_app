import 'package:get/get.dart';
import 'diagnosis_treatment_controller.dart';

class DiagnosisTreatmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiagnosisTreatmentController>(() => DiagnosisTreatmentController());
  }
}
