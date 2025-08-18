import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 在这里可以添加一些通用的请求参数
    options.queryParameters['timestamp'] = DateTime.now().millisecondsSinceEpoch;
    
    // 打印请求信息
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    print('REQUEST PARAMS => ${options.queryParameters}');
    print('REQUEST DATA => ${options.data}');
    
    handler.next(options);
  }
}
