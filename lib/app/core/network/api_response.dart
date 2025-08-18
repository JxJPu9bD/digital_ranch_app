class ApiResponse<T> {
  final int code;
  final String message;
  final T? data;
  final Map<String, dynamic>? meta;

  ApiResponse({
    required this.code,
    required this.message,
    this.data,
    this.meta,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json, T? Function(dynamic)? fromJson) {
    return ApiResponse(
      code: json['code'] as int,
      message: json['msg'] as String,
      data: json['data'] != null && fromJson != null ? fromJson(json['data']) : null,
      meta: json['meta'] as Map<String, dynamic>?,
    );
  }

  bool get isSuccess => code == 200;

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'msg': message,
      'data': data,
      'meta': meta,
    };
  }
}
