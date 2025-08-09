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
import '../modules/business_record/sub_pages/estrus_record/estrus_record_binding.dart';
import '../modules/business_record/sub_pages/estrus_record/estrus_record_view.dart';
import '../modules/business_record/sub_pages/breeding_record/breeding_record_binding.dart';
import '../modules/business_record/sub_pages/breeding_record/breeding_record_view.dart';
import '../modules/business_record/sub_pages/first_check/first_check_binding.dart';
import '../modules/business_record/sub_pages/first_check/first_check_view.dart';
import '../modules/business_record/sub_pages/recheck/recheck_binding.dart';
import '../modules/business_record/sub_pages/recheck/recheck_view.dart';
import '../modules/business_record/sub_pages/abortion_record/abortion_record_binding.dart';
import '../modules/business_record/sub_pages/abortion_record/abortion_record_view.dart';
import '../modules/business_record/sub_pages/breeding_ban/breeding_ban_binding.dart';
import '../modules/business_record/sub_pages/breeding_ban/breeding_ban_view.dart';
import '../modules/business_record/sub_pages/breeding_stop/breeding_stop_binding.dart';
import '../modules/business_record/sub_pages/breeding_stop/breeding_stop_view.dart';

import '../modules/business_record/sub_pages/calving_record/calving_record_binding.dart';
import '../modules/business_record/sub_pages/calving_record/calving_record_view.dart';
import '../modules/business_record/sub_pages/calf_record/calf_record_binding.dart';
import '../modules/business_record/sub_pages/calf_record/calf_record_view.dart';
import '../modules/business_record/sub_pages/weaning_record/weaning_record_binding.dart';
import '../modules/business_record/sub_pages/weaning_record/weaning_record_view.dart';

import '../modules/business_record/sub_pages/disease_report/disease_report_binding.dart';
import '../modules/business_record/sub_pages/disease_report/disease_report_view.dart';
import '../modules/business_record/sub_pages/diagnosis_treatment/diagnosis_treatment_binding.dart';
import '../modules/business_record/sub_pages/diagnosis_treatment/diagnosis_treatment_view.dart';
import '../modules/business_record/sub_pages/transfer_treatment/transfer_treatment_binding.dart';
import '../modules/business_record/sub_pages/transfer_treatment/transfer_treatment_view.dart';
import '../modules/business_record/sub_pages/postpartum_care/postpartum_care_binding.dart';
import '../modules/business_record/sub_pages/postpartum_care/postpartum_care_view.dart';
import '../modules/business_record/sub_pages/immune_record/immune_record_binding.dart';
import '../modules/business_record/sub_pages/immune_record/immune_record_view.dart';
import '../modules/business_record/sub_pages/quarantine_record/quarantine_record_binding.dart';
import '../modules/business_record/sub_pages/quarantine_record/quarantine_record_view.dart';
import '../modules/business_record/sub_pages/immune_quarantine/immune_quarantine_binding.dart';
import '../modules/business_record/sub_pages/immune_quarantine/immune_quarantine_view.dart';

import '../modules/business_record/sub_pages/environment_monitor/environment_monitor_binding.dart';
import '../modules/business_record/sub_pages/environment_monitor/environment_monitor_view.dart';
import '../modules/business_record/sub_pages/water_management/water_management_binding.dart';
import '../modules/business_record/sub_pages/water_management/water_management_view.dart';
import '../modules/business_record/sub_pages/electricity_management/electricity_management_binding.dart';
import '../modules/business_record/sub_pages/electricity_management/electricity_management_view.dart';
import '../modules/business_record/sub_pages/trough_monitor/trough_monitor_binding.dart';
import '../modules/business_record/sub_pages/trough_monitor/trough_monitor_view.dart';
import '../modules/business_record/sub_pages/device_alert/device_alert_binding.dart';
import '../modules/business_record/sub_pages/device_alert/device_alert_view.dart';

import '../modules/business_record/sub_pages/formula_params/formula_params_binding.dart';
import '../modules/business_record/sub_pages/formula_params/formula_params_view.dart';
import '../modules/business_record/sub_pages/feeding_schedule/feeding_schedule_binding.dart';
import '../modules/business_record/sub_pages/feeding_schedule/feeding_schedule_view.dart';
import '../modules/business_record/sub_pages/feeding_formula/feeding_formula_binding.dart';
import '../modules/business_record/sub_pages/feeding_formula/feeding_formula_view.dart';
import '../modules/business_record/sub_pages/feeding_preparation/feeding_preparation_binding.dart';
import '../modules/business_record/sub_pages/feeding_preparation/feeding_preparation_view.dart';

import '../modules/business_record/sub_pages/storage_in/storage_in_binding.dart';
import '../modules/business_record/sub_pages/storage_in/storage_in_view.dart';
import '../modules/business_record/sub_pages/storage_in_review/storage_in_review_binding.dart';
import '../modules/business_record/sub_pages/storage_in_review/storage_in_review_view.dart';
import '../modules/business_record/sub_pages/usage_record/usage_record_binding.dart';
import '../modules/business_record/sub_pages/usage_record/usage_record_view.dart';
import '../modules/business_record/sub_pages/usage_review/usage_review_binding.dart';
import '../modules/business_record/sub_pages/usage_review/usage_review_view.dart';
import '../modules/business_record/sub_pages/inventory_alert/inventory_alert_binding.dart';
import '../modules/business_record/sub_pages/inventory_alert/inventory_alert_view.dart';
import '../modules/business_record/sub_pages/expiry_alert/expiry_alert_binding.dart';
import '../modules/business_record/sub_pages/expiry_alert/expiry_alert_view.dart';
import '../modules/business_record/sub_pages/inventory_query/inventory_query_binding.dart';
import '../modules/business_record/sub_pages/inventory_query/inventory_query_view.dart';

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

    // 繁育业务
    GetPage(
        name: Routes.ESTRUS_RECORD,
        page: () => const EstrusRecordView(),
        binding: EstrusRecordBinding()),
    GetPage(
        name: Routes.BREEDING_RECORD,
        page: () => const BreedingRecordView(),
        binding: BreedingRecordBinding()),
    GetPage(
        name: Routes.FIRST_CHECK,
        page: () => const FirstCheckView(),
        binding: FirstCheckBinding()),
    GetPage(
        name: Routes.RECHECK,
        page: () => const RecheckView(),
        binding: RecheckBinding()),
    GetPage(
        name: Routes.ABORTION_RECORD,
        page: () => const AbortionRecordView(),
        binding: AbortionRecordBinding()),
    GetPage(
        name: Routes.BREEDING_BAN,
        page: () => const BreedingBanView(),
        binding: BreedingBanBinding()),
    GetPage(
        name: Routes.BREEDING_STOP,
        page: () => const BreedingStopView(),
        binding: BreedingStopBinding()),

    // 产犊业务
    GetPage(
        name: Routes.CALVING_RECORD,
        page: () => const CalvingRecordView(),
        binding: CalvingRecordBinding()),
    GetPage(
        name: Routes.CALF_RECORD,
        page: () => const CalfRecordView(),
        binding: CalfRecordBinding()),
    GetPage(
        name: Routes.WEANING_RECORD,
        page: () => const WeaningRecordView(),
        binding: WeaningRecordBinding()),

    // 兽医业务
    GetPage(
        name: Routes.DISEASE_REPORT,
        page: () => const DiseaseReportView(),
        binding: DiseaseReportBinding()),
    GetPage(
        name: Routes.DIAGNOSIS_TREATMENT,
        page: () => const DiagnosisTreatmentView(),
        binding: DiagnosisTreatmentBinding()),
    GetPage(
        name: Routes.TRANSFER_TREATMENT,
        page: () => const TransferTreatmentView(),
        binding: TransferTreatmentBinding()),
    GetPage(
        name: Routes.POSTPARTUM_CARE,
        page: () => const PostpartumCareView(),
        binding: PostpartumCareBinding()),
    GetPage(
        name: Routes.IMMUNE_RECORD,
        page: () => const ImmuneRecordView(),
        binding: ImmuneRecordBinding()),
    GetPage(
        name: Routes.QUARANTINE_RECORD,
        page: () => const QuarantineRecordView(),
        binding: QuarantineRecordBinding()),
    GetPage(
        name: Routes.IMMUNE_QUARANTINE,
        page: () => const ImmuneQuarantineView(),
        binding: ImmuneQuarantineBinding()),

    // 智能设备
    GetPage(
        name: Routes.ENVIRONMENT_MONITOR,
        page: () => const EnvironmentMonitorView(),
        binding: EnvironmentMonitorBinding()),
    GetPage(
        name: Routes.WATER_MANAGEMENT,
        page: () => const WaterManagementView(),
        binding: WaterManagementBinding()),
    GetPage(
        name: Routes.ELECTRICITY_MANAGEMENT,
        page: () => const ElectricityManagementView(),
        binding: ElectricityManagementBinding()),
    GetPage(
        name: Routes.TROUGH_MONITOR,
        page: () => const TroughMonitorView(),
        binding: TroughMonitorBinding()),
    GetPage(
        name: Routes.DEVICE_ALERT,
        page: () => const DeviceAlertView(),
        binding: DeviceAlertBinding()),

    // 饲喂业务
    GetPage(
        name: Routes.FORMULA_PARAMS,
        page: () => const FormulaParamsView(),
        binding: FormulaParamsBinding()),
    GetPage(
        name: Routes.FEEDING_SCHEDULE,
        page: () => const FeedingScheduleView(),
        binding: FeedingScheduleBinding()),
    GetPage(
        name: Routes.FEEDING_FORMULA,
        page: () => const FeedingFormulaView(),
        binding: FeedingFormulaBinding()),
    GetPage(
        name: Routes.FEEDING_PREPARATION,
        page: () => const FeedingPreparationView(),
        binding: FeedingPreparationBinding()),

    // 投入品业务
    GetPage(
        name: Routes.STORAGE_IN,
        page: () => const StorageInView(),
        binding: StorageInBinding()),
    GetPage(
        name: Routes.STORAGE_IN_REVIEW,
        page: () => const StorageInReviewView(),
        binding: StorageInReviewBinding()),
    GetPage(
        name: Routes.USAGE_RECORD,
        page: () => const UsageRecordView(),
        binding: UsageRecordBinding()),
    GetPage(
        name: Routes.USAGE_REVIEW,
        page: () => const UsageReviewView(),
        binding: UsageReviewBinding()),
    GetPage(
        name: Routes.INVENTORY_ALERT,
        page: () => const InventoryAlertView(),
        binding: InventoryAlertBinding()),
    GetPage(
        name: Routes.EXPIRY_ALERT,
        page: () => const ExpiryAlertView(),
        binding: ExpiryAlertBinding()),
    GetPage(
        name: Routes.INVENTORY_QUERY,
        page: () => const InventoryQueryView(),
        binding: InventoryQueryBinding()),
  ];
}
