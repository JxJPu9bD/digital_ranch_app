import 'package:get/get.dart';
import 'cattle_analysis_controller.dart';

class CattleAnalysisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleAnalysisController>(() => CattleAnalysisController());
  }
}
