import 'package:get/get.dart';
import 'transfer_treatment_controller.dart';

class TransferTreatmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransferTreatmentController>(() => TransferTreatmentController());
  }
}
