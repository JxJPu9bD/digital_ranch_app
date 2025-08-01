import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessRecordController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final currentIndex = 0.obs;

  final tabs = ['日常业务', '繁育业务', '产犊业务', '兽医业务', '智能设备', '饲喂业务', '投入品业务'];

  final dailyBusinessItems = [
    {
      'title': '批量入场',
      'icon': 'batch_entry',
      'color': 0xFFFFB74D,
    },
    {
      'title': '入场登记',
      'icon': 'entry_record',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '离场登记',
      'icon': 'exit_record',
      'color': 0xFF64B5F6,
    },
    {
      'title': '转舍登记',
      'icon': 'transfer_record',
      'color': 0xFF4CAF50,
    },
    {
      'title': '耳号更换',
      'icon': 'ear_tag_change',
      'color': 0xFF2196F3,
    },
    {
      'title': '耳牌补发',
      'icon': 'ear_tag_reissue',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '设备绑定',
      'icon': 'device_binding',
      'color': 0xFF3F51B5,
    },
    {
      'title': '档案登记',
      'icon': 'file_record',
      'color': 0xFF64B5F6,
    },
    {
      'title': '消毒登记',
      'icon': 'disinfection_record',
      'color': 0xFFFFB74D,
    },
    {
      'title': '养殖档案',
      'icon': 'breeding_file',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '围产登记',
      'icon': 'perinatal_record',
      'color': 0xFF9C27B0,
    },
    {
      'title': '生长指标登记',
      'icon': 'growth_record',
      'color': 0xFF64B5F6,
    },
    {
      'title': '体况登记',
      'icon': 'condition_record',
      'color': 0xFF4CAF50,
    },
    {
      'title': '单兵找牛',
      'icon': 'find_cattle',
      'color': 0xFF2196F3,
    },
    {
      'title': '牛群盘点',
      'icon': 'cattle_inventory',
      'color': 0xFFFFB74D,
    },
    {
      'title': '视频监控',
      'icon': 'video_monitor',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '巡更登记',
      'icon': 'patrol_record',
      'color': 0xFF3F51B5,
    },
  ].obs;

  final breedingBusinessItems = [
    {
      'title': '发情登记',
      'icon': 'estrus_record',
      'color': 0xFFF44336,
    },
    {
      'title': '配种登记',
      'icon': 'breeding_record',
      'color': 0xFF2196F3,
    },
    {
      'title': '初检登记',
      'icon': 'first_check',
      'color': 0xFF4CAF50,
    },
    {
      'title': '复检登记',
      'icon': 'recheck',
      'color': 0xFF2196F3,
    },
    {
      'title': '流产登记',
      'icon': 'abortion_record',
      'color': 0xFFF44336,
    },
    {
      'title': '禁配解禁',
      'icon': 'breeding_ban',
      'color': 0xFFF44336,
    },
    {
      'title': '停配解停',
      'icon': 'breeding_stop',
      'color': 0xFFF44336,
    },
  ].obs;

  final calvingBusinessItems = [
    {
      'title': '产犊登记',
      'icon': 'calving_record',
      'color': 0xFF4CAF50,
    },
    {
      'title': '犊牛登记',
      'icon': 'calf_record',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '断奶登记',
      'icon': 'weaning_record',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final veterinaryBusinessItems = [
    {
      'title': '疾病揭发',
      'icon': 'disease_report',
      'color': 0xFF4CAF50,
    },
    {
      'title': '确诊治疗',
      'icon': 'diagnosis_treatment',
      'color': 0xFF9C27B0,
    },
    {
      'title': '转归处理',
      'icon': 'transfer_treatment',
      'color': 0xFF4CAF50,
    },
    {
      'title': '产后护理',
      'icon': 'postpartum_care',
      'color': 0xFF9C27B0,
    },
    {
      'title': '免疫登记',
      'icon': 'immune_record',
      'color': 0xFF9C27B0,
    },
    {
      'title': '检疫登记',
      'icon': 'quarantine_record',
      'color': 0xFF4CAF50,
    },
    {
      'title': '免疫检疫',
      'icon': 'immune_quarantine',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final intelligentDeviceItems = [
    {
      'title': '环境监测',
      'icon': 'environment_monitor',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '用水管理',
      'icon': 'water_management',
      'color': 0xFF9C27B0,
    },
    {
      'title': '用电管理',
      'icon': 'electricity_management',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '水槽监测',
      'icon': 'trough_monitor',
      'color': 0xFF9C27B0,
    },
    {
      'title': '设备预警',
      'icon': 'device_alert',
      'color': 0xFFFFEB3B,
    },
  ].obs;

  final feedingBusinessItems = [
    {
      'title': '配方参数',
      'icon': 'formula_params',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '车次饲喂',
      'icon': 'feeding_schedule',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '饲喂配方',
      'icon': 'feeding_formula',
      'color': 0xFF4CAF50,
    },
    {
      'title': '饲喂制备',
      'icon': 'feeding_preparation',
      'color': 0xFFFFEB3B,
    },
  ].obs;

  final inputBusinessItems = [
    {
      'title': '入库登记',
      'icon': 'storage_in',
      'color': 0xFFF44336,
    },
    {
      'title': '入库审核',
      'icon': 'storage_in_review',
      'color': 0xFF4CAF50,
    },
    {
      'title': '领用登记',
      'icon': 'usage_record',
      'color': 0xFFF44336,
    },
    {
      'title': '领用审核',
      'icon': 'usage_review',
      'color': 0xFF4CAF50,
    },
    {
      'title': '库存预警',
      'icon': 'inventory_alert',
      'color': 0xFF4CAF50,
    },
    {
      'title': '过期预警',
      'icon': 'expiry_alert',
      'color': 0xFFF44336,
    },
    {
      'title': '库存查询',
      'icon': 'inventory_query',
      'color': 0xFFF44336,
    },
  ].obs;

  List<Map<String, dynamic>> getCurrentItems() {
    switch (currentIndex.value) {
      case 0:
        return dailyBusinessItems;
      case 1:
        return breedingBusinessItems;
      case 2:
        return calvingBusinessItems;
      case 3:
        return veterinaryBusinessItems;
      case 4:
        return intelligentDeviceItems;
      case 5:
        return feedingBusinessItems;
      case 6:
        return inputBusinessItems;
      default:
        return [];
    }
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
    tabController.addListener(() {
      currentIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void onItemTap(Map<String, dynamic> item) {
    // TODO: 实现业务项点击处理
    Get.snackbar('提示', '点击了${item['title']}');
  }
} 