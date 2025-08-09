import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'disease_report_controller.dart';

class DiseaseReportView extends GetView<DiseaseReportController> {
  const DiseaseReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('疾病揭发'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack), actions: [IconButton(icon: const Icon(Icons.save), onPressed: controller.submit)]),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(children: [
            _field('耳标号'), SizedBox(height: 16.h), _field('揭发日期'), SizedBox(height: 16.h), _field('症状', maxLines: 3),
            SizedBox(height: 24.h), SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor), onPressed: controller.submit, child: const Text('提交'))),
          ]),
        ),
      ),
    );
  }

  Widget _field(String label, {int maxLines = 1}) => TextFormField(
        decoration: InputDecoration(labelText: label, border: const OutlineInputBorder()),
        maxLines: maxLines,
        validator: (v) => (v == null || v.isEmpty) ? '请输入$label' : null,
      );
}
