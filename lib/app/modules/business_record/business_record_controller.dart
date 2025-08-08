import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessRecordController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final currentIndex = 0.obs;

  final tabs = ['日常业务', '繁育业务', '产犊业务', '兽医业务', '智能设备', '饲喂业务', '投入品业务'];

  final dailyBusinessItems = [
    {
      'title': '批量入场',
      'icon': 'ic_plrc',
      'color': 0xFFFFB74D,
    },
    {
      'title': '入场登记',
      'icon': 'ic_rcdj',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '离场登记',
      'icon': 'ic_lcdj',
      'color': 0xFF64B5F6,
    },
    {
      'title': '转舍登记',
      'icon': 'ic_zsdj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '耳号更换',
      'icon': 'ic_ehgh',
      'color': 0xFF2196F3,
    },
    {
      'title': '耳牌补发',
      'icon': 'ic_epbf',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '设备绑定',
      'icon': 'ic_sbbd',
      'color': 0xFF3F51B5,
    },
    {
      'title': '档案登记',
      'icon': 'ic_dadj',
      'color': 0xFF64B5F6,
    },
    {
      'title': '消毒登记',
      'icon': 'ic_xddj',
      'color': 0xFFFFB74D,
    },
    {
      'title': '养殖档案',
      'icon': 'ic_yzda',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '围产登记',
      'icon': 'ic_wcdj',
      'color': 0xFF9C27B0,
    },
    {
      'title': '生长指标登记',
      'icon': 'ic_szzbdj',
      'color': 0xFF64B5F6,
    },
    {
      'title': '体况登记',
      'icon': 'ic_tkdj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '单兵找牛',
      'icon': 'ic_dbzn',
      'color': 0xFF2196F3,
    },
    {
      'title': '牛群盘点',
      'icon': 'ic_nqpd',
      'color': 0xFFFFB74D,
    },
    {
      'title': '视频监控',
      'icon': 'ic_spjk',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '巡更登记',
      'icon': 'ic_xgdj',
      'color': 0xFF3F51B5,
    },
  ].obs;

  final breedingBusinessItems = [
    {
      'title': '发情登记',
      'icon': 'ic_fqdj',
      'color': 0xFFF44336,
    },
    {
      'title': '配种登记',
      'icon': 'ic_pzdj',
      'color': 0xFF2196F3,
    },
    {
      'title': '初检登记',
      'icon': 'ic_cjdj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '复检登记',
      'icon': 'ic_fjdj',
      'color': 0xFF2196F3,
    },
    {
      'title': '流产登记',
      'icon': 'ic_lcdj',
      'color': 0xFFF44336,
    },
    {
      'title': '禁配解禁',
      'icon': 'ic_jpjj',
      'color': 0xFFF44336,
    },
    {
      'title': '停配解停',
      'icon': 'ic_tpjt',
      'color': 0xFFF44336,
    },
  ].obs;

  final calvingBusinessItems = [
    {
      'title': '产犊登记',
      'icon': 'ic_cddj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '犊牛登记',
      'icon': 'ic_dndj',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '断奶登记',
      'icon': 'ic_dndj',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final veterinaryBusinessItems = [
    {
      'title': '疾病揭发',
      'icon': 'ic_jbjf',
      'color': 0xFF4CAF50,
    },
    {
      'title': '确诊治疗',
      'icon': 'ic_qzzl',
      'color': 0xFF9C27B0,
    },
    {
      'title': '转归处理',
      'icon': 'ic_zgcl',
      'color': 0xFF4CAF50,
    },
    {
      'title': '产后护理',
      'icon': 'ic_chhl',
      'color': 0xFF9C27B0,
    },
    {
      'title': '免疫登记',
      'icon': 'ic_mydj',
      'color': 0xFF9C27B0,
    },
    {
      'title': '检疫登记',
      'icon': 'ic_jydj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '免疫检疫',
      'icon': 'ic_myjy',
      'color': 0xFF4CAF50,
    },
  ].obs;

  final intelligentDeviceItems = [
    {
      'title': '环境监测',
      'icon': 'ic_hjjc',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '用水管理',
      'icon': 'ic_ysgl',
      'color': 0xFF9C27B0,
    },
    {
      'title': '用电管理',
      'icon': 'ic_ydgl',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '水槽监测',
      'icon': 'ic_scjc',
      'color': 0xFF9C27B0,
    },
    {
      'title': '设备预警',
      'icon': 'ic_sbyj',
      'color': 0xFFFFEB3B,
    },
  ].obs;

  final feedingBusinessItems = [
    {
      'title': '配方参数',
      'icon': 'ic_pfcs',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '车次饲喂',
      'icon': 'ic_ccsw',
      'color': 0xFFFFEB3B,
    },
    {
      'title': '饲喂配方',
      'icon': 'ic_swpf',
      'color': 0xFF4CAF50,
    },
    {
      'title': '饲喂制备',
      'icon': 'ic_swzb',
      'color': 0xFFFFEB3B,
    },
  ].obs;

  final inputBusinessItems = [
    {
      'title': '入库登记',
      'icon': 'ic_rkdj',
      'color': 0xFFF44336,
    },
    {
      'title': '入库审核',
      'icon': 'ic_rksh',
      'color': 0xFF4CAF50,
    },
    {
      'title': '领用登记',
      'icon': 'ic_lydj',
      'color': 0xFFF44336,
    },
    {
      'title': '领用审核',
      'icon': 'ic_lysh',
      'color': 0xFF4CAF50,
    },
    {
      'title': '库存预警',
      'icon': 'ic_kcyj',
      'color': 0xFF4CAF50,
    },
    {
      'title': '过期预警',
      'icon': 'ic_gqyj',
      'color': 0xFFF44336,
    },
    {
      'title': '库存查询',
      'icon': 'ic_kccx',
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
    // 根据业务类型跳转到对应页面
    switch (item['icon']) {
      case 'ic_plrc':
        Get.toNamed('/business-record/batch-entry');
        break;
      case 'ic_rcdj':
        Get.toNamed('/business-record/entry-record');
        break;
      case 'ic_lcdj':
        Get.toNamed('/business-record/exit-record');
        break;
      case 'ic_zsdj':
        Get.toNamed('/business-record/transfer-record');
        break;
      case 'ic_ehgh':
        Get.toNamed('/business-record/ear-tag-change');
        break;
      case 'ic_epbf':
        Get.toNamed('/business-record/ear-tag-reissue');
        break;
      case 'ic_sbbd':
        Get.toNamed('/business-record/device-binding');
        break;
      case 'ic_dadj':
        Get.toNamed('/business-record/file-record');
        break;
      case 'ic_xddj':
        Get.toNamed('/business-record/disinfection-record');
        break;
      case 'ic_yzda':
        Get.toNamed('/business-record/breeding-file');
        break;
      case 'ic_wcdj':
        Get.toNamed('/business-record/perinatal-record');
        break;
      case 'ic_szzbdj':
        Get.toNamed('/business-record/growth-record');
        break;
      case 'ic_tkdj':
        Get.toNamed('/business-record/condition-record');
        break;
      case 'ic_dbzn':
        Get.toNamed('/business-record/find-cattle');
        break;
      case 'ic_nqpd':
        Get.toNamed('/business-record/cattle-inventory');
        break;
      case 'ic_spjk':
        Get.toNamed('/business-record/video-monitor');
        break;
      case 'ic_xgdj':
        Get.toNamed('/business-record/patrol-record');
        break;
      // 繁育业务
      case 'ic_fqdj':
        Get.toNamed('/business-record/estrus-record');
        break;
      case 'ic_pzdj':
        Get.toNamed('/business-record/breeding-record');
        break;
      case 'ic_cjdj':
        Get.toNamed('/business-record/first-check');
        break;
      case 'ic_fjdj':
        Get.toNamed('/business-record/recheck');
        break;
      case 'ic_lcdj':
        Get.toNamed('/business-record/abortion-record');
        break;
      case 'ic_jpjj':
        Get.toNamed('/business-record/breeding-ban');
        break;
      case 'ic_tpjt':
        Get.toNamed('/business-record/breeding-stop');
        break;
      // 产犊业务
      case 'ic_cddj':
        Get.toNamed('/business-record/calving-record');
        break;
      case 'ic_dndj':
        Get.toNamed('/business-record/calf-record');
        break;
      // 兽医业务
      case 'ic_jbjf':
        Get.toNamed('/business-record/disease-report');
        break;
      case 'ic_qzzl':
        Get.toNamed('/business-record/diagnosis-treatment');
        break;
      case 'ic_zgcl':
        Get.toNamed('/business-record/transfer-treatment');
        break;
      case 'ic_chhl':
        Get.toNamed('/business-record/postpartum-care');
        break;
      case 'ic_mydj':
        Get.toNamed('/business-record/immune-record');
        break;
      case 'ic_jydj':
        Get.toNamed('/business-record/quarantine-record');
        break;
      case 'ic_myjy':
        Get.toNamed('/business-record/immune-quarantine');
        break;
      // 智能设备
      case 'ic_hjjc':
        Get.toNamed('/business-record/environment-monitor');
        break;
      case 'ic_ysgl':
        Get.toNamed('/business-record/water-management');
        break;
      case 'ic_ydgl':
        Get.toNamed('/business-record/electricity-management');
        break;
      case 'ic_scjc':
        Get.toNamed('/business-record/trough-monitor');
        break;
      case 'ic_sbyj':
        Get.toNamed('/business-record/device-alert');
        break;
      // 饲喂业务
      case 'ic_pfcs':
        Get.toNamed('/business-record/formula-params');
        break;
      case 'ic_ccsw':
        Get.toNamed('/business-record/feeding-schedule');
        break;
      case 'ic_swpf':
        Get.toNamed('/business-record/feeding-formula');
        break;
      case 'ic_swzb':
        Get.toNamed('/business-record/feeding-preparation');
        break;
      // 投入品业务
      case 'ic_rkdj':
        Get.toNamed('/business-record/storage-in');
        break;
      case 'ic_rksh':
        Get.toNamed('/business-record/storage-in-review');
        break;
      case 'ic_lydj':
        Get.toNamed('/business-record/usage-record');
        break;
      case 'ic_lysh':
        Get.toNamed('/business-record/usage-review');
        break;
      case 'ic_kcyj':
        Get.toNamed('/business-record/inventory-alert');
        break;
      case 'ic_gqyj':
        Get.toNamed('/business-record/expiry-alert');
        break;
      case 'ic_kccx':
        Get.toNamed('/business-record/inventory-query');
        break;
      default:
        Get.snackbar('提示', '功能开发中');
    }
  }
} 