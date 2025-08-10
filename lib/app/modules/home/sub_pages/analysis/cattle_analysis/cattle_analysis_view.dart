import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cattle_analysis_controller.dart';

class CattleAnalysisView extends GetView<CattleAnalysisController> {
  const CattleAnalysisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('牛群分析')),
      body: const Center(child: Text('牛群分析页面')),
    );
  }
}
