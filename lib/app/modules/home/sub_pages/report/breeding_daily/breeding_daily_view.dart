import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'breeding_daily_controller.dart';

class BreedingDailyView extends GetView<BreedingDailyController> {
  const BreedingDailyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('繁育日报表')), body: const Center(child: Text('繁育日报表页面')));
  }
}
