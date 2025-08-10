import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cattle_forecast_controller.dart';

class CattleForecastView extends GetView<CattleForecastController> {
  const CattleForecastView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('牛群预测报表')), body: const Center(child: Text('牛群预测报表页面')));
  }
}
