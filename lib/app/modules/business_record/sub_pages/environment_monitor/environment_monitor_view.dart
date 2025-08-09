import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'environment_monitor_controller.dart';

class EnvironmentMonitorView extends GetView<EnvironmentMonitorController> {
  const EnvironmentMonitorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('环境监测'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack), actions: [IconButton(icon: const Icon(Icons.save), onPressed: controller.submit)]),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(children: [
            _field('监测区域'), SizedBox(height: 16.h), _field('温度阈值'), SizedBox(height: 16.h), _field('湿度阈值'),
            SizedBox(height: 24.h), SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor), onPressed: controller.submit, child: const Text('保存'))),
          ]),
        ),
      ),
    );
  }

  Widget _field(String label) => TextFormField(
        decoration: InputDecoration(labelText: label, border: const OutlineInputBorder()),
        validator: (v) => (v == null || v.isEmpty) ? '请输入$label' : null,
      );
}
