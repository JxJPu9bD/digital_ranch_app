import 'package:get/get.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_view.dart';
import '../modules/business_record/sub_pages/batch_entry/batch_entry_binding.dart';
import '../modules/business_record/sub_pages/batch_entry/batch_entry_view.dart';
import '../modules/business_record/sub_pages/entry_record/entry_record_binding.dart';
import '../modules/business_record/sub_pages/entry_record/entry_record_view.dart';
import '../modules/business_record/sub_pages/exit_record/exit_record_binding.dart';
import '../modules/business_record/sub_pages/exit_record/exit_record_view.dart';
import '../modules/business_record/sub_pages/transfer_record/transfer_record_binding.dart';
import '../modules/business_record/sub_pages/transfer_record/transfer_record_view.dart';
import '../modules/business_record/sub_pages/ear_tag_change/ear_tag_change_binding.dart';
import '../modules/business_record/sub_pages/ear_tag_change/ear_tag_change_view.dart';
import '../modules/business_record/sub_pages/ear_tag_reissue/ear_tag_reissue_binding.dart';
import '../modules/business_record/sub_pages/ear_tag_reissue/ear_tag_reissue_view.dart';
import '../modules/business_record/sub_pages/device_binding/device_binding_binding.dart';
import '../modules/business_record/sub_pages/device_binding/device_binding_view.dart';
import '../modules/business_record/sub_pages/file_record/file_record_binding.dart';
import '../modules/business_record/sub_pages/file_record/file_record_view.dart';
import '../modules/business_record/sub_pages/disinfection_record/disinfection_record_binding.dart';
import '../modules/business_record/sub_pages/disinfection_record/disinfection_record_view.dart';
import '../modules/business_record/sub_pages/breeding_file/breeding_file_binding.dart';
import '../modules/business_record/sub_pages/breeding_file/breeding_file_view.dart';
import '../modules/business_record/sub_pages/perinatal_record/perinatal_record_binding.dart';
import '../modules/business_record/sub_pages/perinatal_record/perinatal_record_view.dart';
import '../modules/business_record/sub_pages/growth_record/growth_record_binding.dart';
import '../modules/business_record/sub_pages/growth_record/growth_record_view.dart';
import '../modules/business_record/sub_pages/condition_record/condition_record_binding.dart';
import '../modules/business_record/sub_pages/condition_record/condition_record_view.dart';
import '../modules/business_record/sub_pages/find_cattle/find_cattle_binding.dart';
import '../modules/business_record/sub_pages/find_cattle/find_cattle_view.dart';
import '../modules/business_record/sub_pages/cattle_inventory/cattle_inventory_binding.dart';
import '../modules/business_record/sub_pages/cattle_inventory/cattle_inventory_view.dart';
import '../modules/business_record/sub_pages/video_monitor/video_monitor_binding.dart';
import '../modules/business_record/sub_pages/video_monitor/video_monitor_view.dart';
import '../modules/business_record/sub_pages/patrol_record/patrol_record_binding.dart';
import '../modules/business_record/sub_pages/patrol_record/patrol_record_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const INITIAL = Routes.MAIN;
  
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    
    // 业务登记二级页面路由
    GetPage(
      name: Routes.BATCH_ENTRY,
      page: () => const BatchEntryView(),
      binding: BatchEntryBinding(),
    ),
    GetPage(
      name: Routes.ENTRY_RECORD,
      page: () => const EntryRecordView(),
      binding: EntryRecordBinding(),
    ),
    GetPage(
      name: Routes.EXIT_RECORD,
      page: () => const ExitRecordView(),
      binding: ExitRecordBinding(),
    ),
    GetPage(
      name: Routes.TRANSFER_RECORD,
      page: () => const TransferRecordView(),
      binding: TransferRecordBinding(),
    ),
    GetPage(
      name: Routes.EAR_TAG_CHANGE,
      page: () => const EarTagChangeView(),
      binding: EarTagChangeBinding(),
    ),
    GetPage(
      name: Routes.EAR_TAG_REISSUE,
      page: () => const EarTagReissueView(),
      binding: EarTagReissueBinding(),
    ),
    GetPage(
      name: Routes.DEVICE_BINDING,
      page: () => const DeviceBindingView(),
      binding: DeviceBindingBinding(),
    ),
    GetPage(
      name: Routes.FILE_RECORD,
      page: () => const FileRecordView(),
      binding: FileRecordBinding(),
    ),
    GetPage(
      name: Routes.DISINFECTION_RECORD,
      page: () => const DisinfectionRecordView(),
      binding: DisinfectionRecordBinding(),
    ),
    GetPage(
      name: Routes.BREEDING_FILE,
      page: () => const BreedingFileView(),
      binding: BreedingFileBinding(),
    ),
    GetPage(
      name: Routes.PERINATAL_RECORD,
      page: () => const PerinatalRecordView(),
      binding: PerinatalRecordBinding(),
    ),
    GetPage(
      name: Routes.GROWTH_RECORD,
      page: () => const GrowthRecordView(),
      binding: GrowthRecordBinding(),
    ),
    GetPage(
      name: Routes.CONDITION_RECORD,
      page: () => const ConditionRecordView(),
      binding: ConditionRecordBinding(),
    ),
    GetPage(
      name: Routes.FIND_CATTLE,
      page: () => const FindCattleView(),
      binding: FindCattleBinding(),
    ),
    GetPage(
      name: Routes.CATTLE_INVENTORY,
      page: () => const CattleInventoryView(),
      binding: CattleInventoryBinding(),
    ),
    GetPage(
      name: Routes.VIDEO_MONITOR,
      page: () => const VideoMonitorView(),
      binding: VideoMonitorBinding(),
    ),
    GetPage(
      name: Routes.PATROL_RECORD,
      page: () => const PatrolRecordView(),
      binding: PatrolRecordBinding(),
    ),
  ];
} 