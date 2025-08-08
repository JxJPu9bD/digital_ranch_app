import 'package:get/get.dart';
import 'transfer_record_controller.dart';

class TransferRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransferRecordController>(() => TransferRecordController());
  }
}
