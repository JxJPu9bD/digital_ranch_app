class ApiException implements Exception {
  final String message;
  final int? code;
  final dynamic data;

  ApiException({
    required this.message,
    this.code,
    this.data,
  });

  @override
  String toString() {
    return 'ApiException: $message (code: $code)';
  }

  factory ApiException.fromJson(Map<String, dynamic> json) {
    return ApiException(
      message: json['message'] as String,
      code: json['code'] as int?,
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
      'data': data,
    };
  }
}
