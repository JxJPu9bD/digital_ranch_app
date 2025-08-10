import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cattle_structure_controller.dart';

class CattleStructureView extends GetView<CattleStructureController> {
  const CattleStructureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('牛群结构')),
      body: const Center(child: Text('牛群结构页面')),
    );
  }
}
