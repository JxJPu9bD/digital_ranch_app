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

// 新闻相关页面
import '../modules/home/sub_pages/news/news_list/news_list_binding.dart';
import '../modules/home/sub_pages/news/news_list/news_list_view.dart';
import '../modules/home/sub_pages/news/news_detail/news_detail_binding.dart';
import '../modules/home/sub_pages/news/news_detail/news_detail_view.dart';

// 在线问诊相关页面
import '../modules/home/sub_pages/consultation/consultation_list/consultation_list_binding.dart';
import '../modules/home/sub_pages/consultation/consultation_list/consultation_list_view.dart';
import '../modules/home/sub_pages/consultation/consultation_publish/consultation_publish_binding.dart';
import '../modules/home/sub_pages/consultation/consultation_publish/consultation_publish_view.dart';
import '../modules/home/sub_pages/analysis/cattle_structure/cattle_structure_binding.dart';
import '../modules/home/sub_pages/analysis/cattle_structure/cattle_structure_view.dart';
import '../modules/home/sub_pages/analysis/cattle_analysis/cattle_analysis_binding.dart';
import '../modules/home/sub_pages/analysis/cattle_analysis/cattle_analysis_view.dart';
import '../modules/home/sub_pages/report/calving_summary/calving_summary_binding.dart';
import '../modules/home/sub_pages/report/calving_summary/calving_summary_view.dart';
import '../modules/home/sub_pages/report/calving_daily/calving_daily_binding.dart';
import '../modules/home/sub_pages/report/calving_daily/calving_daily_view.dart';
import '../modules/home/sub_pages/report/single_material_daily/single_material_daily_binding.dart';
import '../modules/home/sub_pages/report/single_material_daily/single_material_daily_view.dart';
import '../modules/home/sub_pages/report/breeding_daily/breeding_daily_binding.dart';
import '../modules/home/sub_pages/report/breeding_daily/breeding_daily_view.dart';
import '../modules/home/sub_pages/report/cattle_structure/cattle_structure_report_binding.dart';
import '../modules/home/sub_pages/report/cattle_structure/cattle_structure_report_view.dart';
import '../modules/home/sub_pages/report/cattle_daily/cattle_daily_binding.dart';
import '../modules/home/sub_pages/report/cattle_daily/cattle_daily_view.dart';
import '../modules/home/sub_pages/report/cattle_forecast/cattle_forecast_binding.dart';
import '../modules/home/sub_pages/report/cattle_forecast/cattle_forecast_view.dart';

// 数据汇报表页面
import '../modules/home/sub_pages/summary/postpartum_care/postpartum_care_binding.dart';
import '../modules/home/sub_pages/summary/postpartum_care/postpartum_care_view.dart';
import '../modules/home/sub_pages/summary/leave_summary/leave_summary_binding.dart';
import '../modules/home/sub_pages/summary/leave_summary/leave_summary_view.dart';
import '../modules/home/sub_pages/summary/castration_info/castration_info_binding.dart';
import '../modules/home/sub_pages/summary/castration_info/castration_info_view.dart';
import '../modules/home/sub_pages/summary/diagnosis_treatment/diagnosis_treatment_binding.dart';
import '../modules/home/sub_pages/summary/diagnosis_treatment/diagnosis_treatment_view.dart';
import '../modules/home/sub_pages/summary/production_data/production_data_binding.dart';
import '../modules/home/sub_pages/summary/production_data/production_data_view.dart';
import '../modules/home/sub_pages/summary/disinfection_info/disinfection_info_binding.dart';
import '../modules/home/sub_pages/summary/disinfection_info/disinfection_info_view.dart';
import '../modules/home/sub_pages/summary/transfer_summary/transfer_summary_binding.dart';
import '../modules/home/sub_pages/summary/transfer_summary/transfer_summary_view.dart';

// 结构图表页面
import '../modules/home/sub_pages/chart/environment_monitor/environment_monitor_binding.dart';
import '../modules/home/sub_pages/chart/environment_monitor/environment_monitor_view.dart';
import '../modules/home/sub_pages/chart/disease_treatment/disease_treatment_binding.dart';
import '../modules/home/sub_pages/chart/disease_treatment/disease_treatment_view.dart';
import '../modules/home/sub_pages/chart/breeding_rate/breeding_rate_binding.dart';
import '../modules/home/sub_pages/chart/breeding_rate/breeding_rate_view.dart';
import '../modules/home/sub_pages/chart/inout_statistics/inout_statistics_binding.dart';
import '../modules/home/sub_pages/chart/inout_statistics/inout_statistics_view.dart';
import '../modules/home/sub_pages/chart/cattle_production/cattle_production_binding.dart';
import '../modules/home/sub_pages/chart/cattle_production/cattle_production_view.dart';
import '../modules/home/sub_pages/chart/mortality_rate/mortality_rate_binding.dart';
import '../modules/home/sub_pages/chart/mortality_rate/mortality_rate_view.dart';

// 业务：繁育业务页面
import '../modules/home/sub_pages/business/breeding_business/breeding_business_binding.dart';
import '../modules/home/sub_pages/business/breeding_business/breeding_business_view.dart';
import '../modules/home/sub_pages/business/disease_health/disease_health_binding.dart';
import '../modules/home/sub_pages/business/disease_health/disease_health_view.dart';

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

    // 首页功能：数据分析（独立页面）
    GetPage(name: Routes.HOME_CATTLE_STRUCTURE, page: () => const CattleStructureView(), binding: CattleStructureBinding()),
    GetPage(name: Routes.HOME_CATTLE_ANALYSIS, page: () => const CattleAnalysisView(), binding: CattleAnalysisBinding()),

    // 首页功能：数据报表（独立页面）
    GetPage(name: Routes.HOME_CALVING_SUMMARY_REPORT, page: () => const CalvingSummaryView(), binding: CalvingSummaryBinding()),
    GetPage(name: Routes.HOME_CALVING_DAILY_REPORT, page: () => const CalvingDailyView(), binding: CalvingDailyBinding()),
    GetPage(name: Routes.HOME_SINGLE_MATERIAL_DAILY_REPORT, page: () => const SingleMaterialDailyView(), binding: SingleMaterialDailyBinding()),
    GetPage(name: Routes.HOME_BREEDING_DAILY_REPORT, page: () => const BreedingDailyView(), binding: BreedingDailyBinding()),
    GetPage(name: Routes.HOME_CATTLE_STRUCTURE_REPORT, page: () => const CattleStructureReportView(), binding: CattleStructureReportBinding()),
    GetPage(name: Routes.HOME_CATTLE_DAILY_REPORT, page: () => const CattleDailyView(), binding: CattleDailyBinding()),
    GetPage(name: Routes.HOME_CATTLE_FORECAST_REPORT, page: () => const CattleForecastView(), binding: CattleForecastBinding()),

    // 首页功能：数据汇报表
    GetPage(name: Routes.HOME_POSTPARTUM_CARE_SUMMARY, page: () => const PostpartumCareView(), binding: PostpartumCareBinding()),
    GetPage(name: Routes.HOME_LEAVE_SUMMARY, page: () => const LeaveSummaryView(), binding: LeaveSummaryBinding()),
    GetPage(name: Routes.HOME_CASTRATION_INFO, page: () => const CastrationInfoView(), binding: CastrationInfoBinding()),
    GetPage(name: Routes.HOME_DIAGNOSIS_TREATMENT_SUMMARY, page: () => const DiagnosisTreatmentView(), binding: DiagnosisTreatmentBinding()),
    GetPage(name: Routes.HOME_PRODUCTION_DATA, page: () => const ProductionDataView(), binding: ProductionDataBinding()),
    GetPage(name: Routes.HOME_DISINFECTION_INFO, page: () => const DisinfectionInfoView(), binding: DisinfectionInfoBinding()),
    GetPage(name: Routes.HOME_TRANSFER_SUMMARY, page: () => const TransferSummaryView(), binding: TransferSummaryBinding()),

    // 首页功能：结构图表
    GetPage(name: Routes.HOME_ENV_MONITOR_CHART, page: () => const EnvironmentMonitorView(), binding: EnvironmentMonitorBinding()),
    GetPage(name: Routes.HOME_DISEASE_TREATMENT_DATA, page: () => const DiseaseTreatmentView(), binding: DiseaseTreatmentBinding()),
    GetPage(name: Routes.HOME_FIVE_YEAR_BREEDING_RATE, page: () => const BreedingRateView(), binding: BreedingRateBinding()),
    GetPage(name: Routes.HOME_INOUT_STATISTICS, page: () => const InoutStatisticsView(), binding: InoutStatisticsBinding()),
    GetPage(name: Routes.HOME_CATTLE_PRODUCTION_DATA, page: () => const CattleProductionView(), binding: CattleProductionBinding()),
    GetPage(name: Routes.HOME_ONE_YEAR_MORTALITY, page: () => const MortalityRateView(), binding: MortalityRateBinding()),

    // 首页功能：业务 - 繁育业务
    GetPage(name: Routes.HOME_BREEDING_BUSINESS, page: () => const BreedingBusinessView(), binding: BreedingBusinessBinding()),
    // 首页功能：业务 - 疾病健康
    GetPage(name: Routes.HOME_DISEASE_HEALTH, page: () => const DiseaseHealthView(), binding: DiseaseHealthBinding()),

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

    // 新闻相关页面
    GetPage(
      name: Routes.NEWS_LIST,
      page: () => const NewsListView(),
      binding: NewsListBinding(),
    ),
    GetPage(
      name: Routes.NEWS_DETAIL,
      page: () => const NewsDetailView(),
      binding: NewsDetailBinding(),
    ),

    // 在线问诊相关页面
    GetPage(
      name: Routes.CONSULTATION_LIST,
      page: () => const ConsultationListView(),
      binding: ConsultationListBinding(),
    ),
    GetPage(
      name: Routes.CONSULTATION_PUBLISH,
      page: () => const ConsultationPublishView(),
      binding: ConsultationPublishBinding(),
    ),
  ];
}
