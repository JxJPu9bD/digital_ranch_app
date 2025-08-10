import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cattle_structure_report_controller.dart';

class CattleStructureReportView extends GetView<CattleStructureReportController> {
  const CattleStructureReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('牛群结构报表')), body: const Center(child: Text('牛群结构报表页面')));
  }
}
