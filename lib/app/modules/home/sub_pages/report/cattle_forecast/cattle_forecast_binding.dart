import 'package:get/get.dart';
import 'cattle_forecast_controller.dart';

class CattleForecastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CattleForecastController>(() => CattleForecastController());
  }
}
