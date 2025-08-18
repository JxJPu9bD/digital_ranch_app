import 'package:intl/intl.dart';

class DateUtil {
  static String formatDateTime(String? dateTimeStr) {
    if (dateTimeStr == null || dateTimeStr.isEmpty) {
      return '';
    }

    try {
      // 解析包含时区信息的ISO8601格式日期
      DateTime dateTime = DateTime.parse(dateTimeStr);
      
      // 格式化日期和时间
      final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
      return formatter.format(dateTime.toLocal());
    } catch (e) {
      return dateTimeStr;
    }
  }

  static String formatDate(String? dateTimeStr) {
    if (dateTimeStr == null || dateTimeStr.isEmpty) {
      return '';
    }

    try {
      DateTime dateTime = DateTime.parse(dateTimeStr);
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      return formatter.format(dateTime.toLocal());
    } catch (e) {
      return dateTimeStr;
    }
  }

  static String formatTime(String? dateTimeStr) {
    if (dateTimeStr == null || dateTimeStr.isEmpty) {
      return '';
    }

    try {
      DateTime dateTime = DateTime.parse(dateTimeStr);
      final DateFormat formatter = DateFormat('HH:mm:ss');
      return formatter.format(dateTime.toLocal());
    } catch (e) {
      return dateTimeStr;
    }
  }
}
