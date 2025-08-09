import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'inventory_alert_controller.dart';

class InventoryAlertView extends GetView<InventoryAlertController> {
  const InventoryAlertView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('库存预警'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack)),
      body: const Center(child: Text('库存预警列表')), // 预留列表页
    );
  }
}
