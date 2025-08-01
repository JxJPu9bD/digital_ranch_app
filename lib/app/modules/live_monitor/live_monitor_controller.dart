import 'package:get/get.dart';

class LiveMonitorController extends GetxController {
  final selectedDate = DateTime.now().obs;
  final isLoading = false.obs;
  final monitorData = <String, dynamic>{}.obs;

  void changeDate(DateTime date) {
    selectedDate.value = date;
    loadMonitorData();
  }

  void loadMonitorData() {
    isLoading.value = true;
    // TODO: 从API获取监管数据
    Future.delayed(const Duration(seconds: 1), () {
      // 模拟数据
      monitorData.value = {
        '体温': '38.5°C',
        '心率': '75次/分',
        '呼吸': '20次/分',
        '活动量': '正常',
        '采食量': '12.5kg',
        '饮水量': '40L',
      };
      isLoading.value = false;
    });
  }

  @override
  void onInit() {
    super.onInit();
    loadMonitorData();
  }
} 