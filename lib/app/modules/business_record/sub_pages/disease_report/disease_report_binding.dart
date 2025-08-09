import 'package:get/get.dart';
import 'disease_report_controller.dart';

class DiseaseReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiseaseReportController>(() => DiseaseReportController());
  }
}
