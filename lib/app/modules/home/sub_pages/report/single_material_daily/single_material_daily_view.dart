import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'single_material_daily_controller.dart';

class SingleMaterialDailyView extends GetView<SingleMaterialDailyController> {
  const SingleMaterialDailyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('单项物料日报表')), body: const Center(child: Text('单项物料日报表页面')));
  }
}
