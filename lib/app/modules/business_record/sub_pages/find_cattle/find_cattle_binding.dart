import 'package:get/get.dart';
import 'find_cattle_controller.dart';

class FindCattleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindCattleController>(() => FindCattleController());
  }
}
