import 'package:get/get.dart';
import '../../../../services/auth_service.dart';

class UserInfoController extends GetxController {
  final AuthService _authService = AuthService();
  
  final userInfo = {
    'username': '',
    'nickName': '',
    'farmName': '',
    'loginDate': '',
    'label': '',
  }.obs;
  
  final isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadUserInfo();
  }

  Future<void> loadUserInfo() async {
    try {
      isLoading.value = true;
      final data = await _authService.getUserInfo();
      userInfo.value = {
        'username': data['username'] ?? '',
        'nickName': data['nickName'] ?? '',
        'farmName': data['farmName'] ?? '',
        'loginDate': data['loginDate'] ?? '',
        'label': data['label'] ?? '',
      };
    } catch (e) {
      Get.snackbar('错误', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void goBack() => Get.back();
}
