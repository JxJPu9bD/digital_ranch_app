import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cattle_daily_controller.dart';

class CattleDailyView extends GetView<CattleDailyController> {
  const CattleDailyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('牛群日报表')), body: const Center(child: Text('牛群日报表页面')));
  }
}
