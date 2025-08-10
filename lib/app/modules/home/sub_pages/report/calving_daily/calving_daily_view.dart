import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calving_daily_controller.dart';

class CalvingDailyView extends GetView<CalvingDailyController> {
  const CalvingDailyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('产犊日报表')), body: const Center(child: Text('产犊日报表页面')));
  }
}
