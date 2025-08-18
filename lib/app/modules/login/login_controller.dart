import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../services/auth_service.dart';
import '../../core/utils/storage_util.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService();
  final usernameController = TextEditingController(text: 'ry');
  final passwordController = TextEditingController(text: 'admin123');
  final isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  final isLoading = false.obs;

  void login() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('错误', '请输入用户名和密码',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    try {
      isLoading.value = true;
      final token = await _authService.login(
        usernameController.text,
        passwordController.text,
      );

      print('token: $token');
      
      // 保存token
      await StorageUtil.setToken(token);
      
      // 跳转到主页
      Get.offAllNamed('/main');
    } catch (e) {
      Get.snackbar(
        '错误',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
} 