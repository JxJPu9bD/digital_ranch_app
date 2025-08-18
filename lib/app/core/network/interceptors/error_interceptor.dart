import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String message = '';
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        message = '连接超时';
        break;
      case DioExceptionType.sendTimeout:
        message = '请求超时';
        break;
      case DioExceptionType.receiveTimeout:
        message = '响应超时';
        break;
      case DioExceptionType.badResponse:
        message = _handleError(err.response?.statusCode);
        break;
      case DioExceptionType.cancel:
        message = '请求取消';
        break;
      default:
        message = '网络错误';
        break;
    }

    Get.snackbar(
      '错误',
      message,
      snackPosition: SnackPosition.TOP,
    );
    
    handler.next(err);
  }

  String _handleError(int? statusCode) {
    switch (statusCode) {
      case 400:
        return '请求语法错误';
      case 401:
        return '未授权，请登录';
      case 403:
        return '拒绝访问';
      case 404:
        return '请求出错';
      case 408:
        return '请求超时';
      case 500:
        return '服务器内部错误';
      case 501:
        return '服务未实现';
      case 502:
        return '网关错误';
      case 503:
        return '服务不可用';
      case 504:
        return '网关超时';
      case 505:
        return 'HTTP版本不受支持';
      default:
        return '请求失败，错误码：$statusCode';
    }
  }
}
