import 'package:get/get.dart';
import 'feeding_formula_controller.dart';

class FeedingFormulaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedingFormulaController>(() => FeedingFormulaController());
  }
}
