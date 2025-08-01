import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void login() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('错误', '请输入用户名和密码',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    
    // TODO: 实现实际的登录逻辑
    Get.offAllNamed('/main');
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
} 