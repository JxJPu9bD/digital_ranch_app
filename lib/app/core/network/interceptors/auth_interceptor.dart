import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../utils/storage_util.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = StorageUtil.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // Token过期，跳转到登录页
      StorageUtil.clearToken();
      Get.offAllNamed('/login');
      return;
    }
    handler.next(err);
  }
}
