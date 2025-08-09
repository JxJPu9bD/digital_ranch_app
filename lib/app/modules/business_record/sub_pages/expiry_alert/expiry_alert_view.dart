import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'expiry_alert_controller.dart';

class ExpiryAlertView extends GetView<ExpiryAlertController> {
  const ExpiryAlertView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('过期预警'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack)),
      body: const Center(child: Text('过期预警列表')), // 预留列表页
    );
  }
}
