import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'inventory_query_controller.dart';

class InventoryQueryView extends GetView<InventoryQueryController> {
  const InventoryQueryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('库存查询'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack)),
      body: const Center(child: Text('库存查询页面')), // 预留界面
    );
  }
}
