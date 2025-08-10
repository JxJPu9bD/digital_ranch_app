import 'package:get/get.dart';
import 'production_data_controller.dart';

class ProductionDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductionDataController>(() => ProductionDataController());
  }
}
