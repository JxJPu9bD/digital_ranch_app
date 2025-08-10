import 'package:get/get.dart';
import 'inout_statistics_controller.dart';

class InoutStatisticsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InoutStatisticsController>(() => InoutStatisticsController());
  }
}
