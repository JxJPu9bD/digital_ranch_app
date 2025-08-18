part of 'app_pages.dart';

abstract class Routes {
  static const LOGIN = '/login';
  static const MAIN = '/main';
  
  // 首页功能：数据分析
  static const HOME_CATTLE_STRUCTURE = '/home/analysis/cattle-structure';
  static const HOME_CATTLE_ANALYSIS = '/home/analysis/cattle-analysis';

  // 首页功能：数据报表
  static const HOME_CALVING_SUMMARY_REPORT = '/home/report/calving-summary';
  static const HOME_CALVING_DAILY_REPORT = '/home/report/calving-daily';
  static const HOME_SINGLE_MATERIAL_DAILY_REPORT = '/home/report/single-material-daily';
  static const HOME_BREEDING_DAILY_REPORT = '/home/report/breeding-daily';
  static const HOME_CATTLE_STRUCTURE_REPORT = '/home/report/cattle-structure';
  static const HOME_CATTLE_DAILY_REPORT = '/home/report/cattle-daily';
  static const HOME_CATTLE_FORECAST_REPORT = '/home/report/cattle-forecast';

  // 首页功能：数据汇报表
  static const HOME_POSTPARTUM_CARE_SUMMARY = '/home/summary/postpartum-care';
  static const HOME_LEAVE_SUMMARY = '/home/summary/leave-summary';
  static const HOME_CASTRATION_INFO = '/home/summary/castration-info';
  static const HOME_DIAGNOSIS_TREATMENT_SUMMARY = '/home/summary/diagnosis-treatment';
  static const HOME_PRODUCTION_DATA = '/home/summary/production-data';
  static const HOME_DISINFECTION_INFO = '/home/summary/disinfection-info';
  static const HOME_TRANSFER_SUMMARY = '/home/summary/transfer-summary';

  // 首页功能：结构图表
  static const HOME_ENV_MONITOR_CHART = '/home/chart/environment-monitor';
  static const HOME_DISEASE_TREATMENT_DATA = '/home/chart/disease-treatment-data';
  static const HOME_FIVE_YEAR_BREEDING_RATE = '/home/chart/five-year-breeding-rate';
  static const HOME_INOUT_STATISTICS = '/home/chart/inout-statistics';
  static const HOME_CATTLE_PRODUCTION_DATA = '/home/chart/cattle-production-data';
  static const HOME_ONE_YEAR_MORTALITY = '/home/chart/one-year-mortality';

  // 首页功能：业务 - 繁育业务
  static const HOME_BREEDING_BUSINESS = '/home/business/breeding';
  static const HOME_DISEASE_HEALTH = '/home/business/disease-health';
  static const HOME_CALF_BUSINESS = '/home/business/calf';

  // 业务登记等（已存在）
  static const BATCH_ENTRY = '/business-record/batch-entry';
  static const ENTRY_RECORD = '/business-record/entry-record';
  static const EXIT_RECORD = '/business-record/exit-record';
  static const TRANSFER_RECORD = '/business-record/transfer-record';
  static const EAR_TAG_CHANGE = '/business-record/ear-tag-change';
  static const EAR_TAG_REISSUE = '/business-record/ear-tag-reissue';
  static const DEVICE_BINDING = '/business-record/device-binding';
  static const FILE_RECORD = '/business-record/file-record';
  static const DISINFECTION_RECORD = '/business-record/disinfection-record';
  static const BREEDING_FILE = '/business-record/breeding-file';
  static const PERINATAL_RECORD = '/business-record/perinatal-record';
  static const GROWTH_RECORD = '/business-record/growth-record';
  static const CONDITION_RECORD = '/business-record/condition-record';
  static const FIND_CATTLE = '/business-record/find-cattle';
  static const CATTLE_INVENTORY = '/business-record/cattle-inventory';
  static const VIDEO_MONITOR = '/business-record/video-monitor';
  static const PATROL_RECORD = '/business-record/patrol-record';
  
  // 繁育业务二级页面路由
  static const ESTRUS_RECORD = '/business-record/estrus-record';
  static const BREEDING_RECORD = '/business-record/breeding-record';
  static const FIRST_CHECK = '/business-record/first-check';
  static const RECHECK = '/business-record/recheck';
  static const ABORTION_RECORD = '/business-record/abortion-record';
  static const BREEDING_BAN = '/business-record/breeding-ban';
  static const BREEDING_STOP = '/business-record/breeding-stop';
  
  // 产犊业务二级页面路由
  static const CALVING_RECORD = '/business-record/calving-record';
  static const CALF_RECORD = '/business-record/calf-record';
  static const WEANING_RECORD = '/business-record/weaning-record';
  
  // 兽医业务二级页面路由
  static const DISEASE_REPORT = '/business-record/disease-report';
  static const DIAGNOSIS_TREATMENT = '/business-record/diagnosis-treatment';
  static const TRANSFER_TREATMENT = '/business-record/transfer-treatment';
  static const POSTPARTUM_CARE = '/business-record/postpartum-care';
  static const IMMUNE_RECORD = '/business-record/immune-record';
  static const QUARANTINE_RECORD = '/business-record/quarantine-record';
  static const IMMUNE_QUARANTINE = '/business-record/immune-quarantine';
  
  // 智能设备二级页面路由
  static const ENVIRONMENT_MONITOR = '/business-record/environment-monitor';
  static const WATER_MANAGEMENT = '/business-record/water-management';
  static const ELECTRICITY_MANAGEMENT = '/business-record/electricity-management';
  static const TROUGH_MONITOR = '/business-record/trough-monitor';
  static const DEVICE_ALERT = '/business-record/device-alert';
  
  // 饲喂业务二级页面路由
  static const FORMULA_PARAMS = '/business-record/formula-params';
  static const FEEDING_SCHEDULE = '/business-record/feeding-schedule';
  static const FEEDING_FORMULA = '/business-record/feeding-formula';
  static const FEEDING_PREPARATION = '/business-record/feeding-preparation';
  
  // 投入品业务二级页面路由
  static const STORAGE_IN = '/business-record/storage-in';
  static const STORAGE_IN_REVIEW = '/business-record/storage-in-review';
  static const USAGE_RECORD = '/business-record/usage-record';
  static const USAGE_REVIEW = '/business-record/usage-review';
  static const INVENTORY_ALERT = '/business-record/inventory-alert';
  static const EXPIRY_ALERT = '/business-record/expiry-alert';
  static const INVENTORY_QUERY = '/business-record/inventory-query';

  // 新闻相关路由
  static const NEWS_LIST = '/home/news/list';
  static const NEWS_DETAIL = '/home/news/detail';

  // 在线问诊相关路由
  static const CONSULTATION_LIST = '/home/consultation/list';
  static const CONSULTATION_PUBLISH = '/home/consultation/publish';

  // 个人中心相关路由
  static const USER_INFO = '/profile/user-info';
}
