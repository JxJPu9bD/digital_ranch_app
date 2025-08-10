import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calving_summary_controller.dart';

class CalvingSummaryView extends GetView<CalvingSummaryController> {
  const CalvingSummaryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('产犊汇总报表')), body: const Center(child: Text('产犊汇总报表页面')));
  }
}
