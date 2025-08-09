import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'immune_record_controller.dart';

class ImmuneRecordView extends GetView<ImmuneRecordController> {
  const ImmuneRecordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('免疫登记'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack), actions: [IconButton(icon: const Icon(Icons.save), onPressed: controller.submit)]),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(children: [
            _field('耳标号'), SizedBox(height: 16.h), _field('免疫日期'), SizedBox(height: 16.h), _field('疫苗名称'), SizedBox(height: 16.h), _field('剂量'),
            SizedBox(height: 24.h), SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor), onPressed: controller.submit, child: const Text('提交'))),
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
