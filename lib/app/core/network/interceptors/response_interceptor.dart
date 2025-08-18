import 'package:dio/dio.dart';
import '../api_exception.dart';
import '../api_response.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 打印响应信息
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    print('RESPONSE DATA => ${response.data}');

    // 统一处理响应数据
    if (response.data is Map) {
      final Map<String, dynamic> data = response.data;
      final int code = data['code'] as int;
      final String message = data['msg'] as String;
      
      if (code != 200) {
        throw ApiException(
          message: message,
          code: code,
        );
      }
      
      // 如果是登录接口，直接返回token
      if (response.requestOptions.path.endsWith('/login')) {
        response.data = data;
      } else {
        response.data = data['data'];
      }
    }

    handler.next(response);
  }
}
