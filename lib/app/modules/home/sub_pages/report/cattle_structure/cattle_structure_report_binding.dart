import 'package:get/get.dart';
import 'cattle_structure_report_controller.dart';

class CattleStructureReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleStructureReportController>(() => CattleStructureReportController());
  }
}
