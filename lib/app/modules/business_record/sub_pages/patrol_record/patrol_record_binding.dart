import 'package:get/get.dart';
import 'patrol_record_controller.dart';

class PatrolRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatrolRecordController>(() => PatrolRecordController());
  }
}
