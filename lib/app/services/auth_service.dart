import '../core/network/dio_client.dart';
import '../core/constants/api_constants.dart';

class AuthService {
  final DioClient _dioClient = DioClient();

  Future<String> login(String username, String password) async {
    final response = await _dioClient.post(
      ApiConstants.login,
      data: {
        'username': username,
        'password': password,
      },
    );
    final Map<String, dynamic> data = response.data;
    return data['token'] as String;
  }

  Future<void> logout() async {
    await _dioClient.post(ApiConstants.logout);
  }

  Future<Map<String, dynamic>> getUserInfo() async {
    final response = await _dioClient.get(ApiConstants.userInfo);
    return Map<String, dynamic>.from(response.data);
  }

  Future<void> updatePassword(String oldPassword, String newPassword) async {
    await _dioClient.put(
      ApiConstants.updatePassword,
      data: {
        'oldPassword': oldPassword,
        'newPassword': newPassword,
      },
    );
  }
}
