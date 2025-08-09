import 'package:get/get.dart';
import 'formula_params_controller.dart';

class FormulaParamsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormulaParamsController>(() => FormulaParamsController());
  }
}
