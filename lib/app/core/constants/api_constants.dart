import '../config/env_config.dart';

class ApiConstants {
  static String get baseUrl => EnvConfig().baseUrl;

  // 用户相关
  static const String login = '/login';
  static const String logout = '/auth/logout';
  static const String userInfo = '/system/user/getLoginUserInfo';
  static const String updatePassword = 'system/user/changePwd';

  // 牧场管理相关
  static const String ranchList = '/ranch/list';
  static const String ranchDetail = '/ranch/detail';
  static const String ranchStats = '/ranch/stats';

  // 设备管理相关
  static const String deviceList = '/device/list';
  static const String deviceDetail = '/device/detail';
  static const String deviceBind = '/device/bind';
  static const String deviceUnbind = '/device/unbind';

  // 牛只管理相关
  static const String cattleList = '/cattle/list';
  static const String cattleDetail = '/cattle/detail';
  static const String cattleEntry = '/cattle/entry';
  static const String cattleExit = '/cattle/exit';
  static const String cattleTransfer = '/cattle/transfer';

  // 饲料管理相关
  static const String feedList = '/feed/list';
  static const String feedDetail = '/feed/detail';
  static const String feedStorage = '/feed/storage';
  static const String feedUsage = '/feed/usage';

  // 疾病管理相关
  static const String diseaseList = '/disease/list';
  static const String diseaseDetail = '/disease/detail';
  static const String diseaseReport = '/disease/report';
  static const String diseaseTreatment = '/disease/treatment';

  // 财务管理相关
  static const String financeList = '/finance/list';
  static const String financeDetail = '/finance/detail';
  static const String financeStats = '/finance/stats';

  // 统计分析相关
  static const String analysisOverview = '/analysis/overview';
  static const String analysisDaily = '/analysis/daily';
  static const String analysisMonthly = '/analysis/monthly';
  static const String analysisYearly = '/analysis/yearly';
}
