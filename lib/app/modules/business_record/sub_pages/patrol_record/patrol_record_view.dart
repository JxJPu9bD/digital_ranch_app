import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'patrol_record_controller.dart';

class PatrolRecordView extends GetView<PatrolRecordController> {
  const PatrolRecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('巡更登记'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: controller.submitForm,
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                _buildBasicInfoSection(),
                _buildSubmitSection(),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildBasicInfoSection() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '基本信息',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor,
            ),
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '巡更路线',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入巡更路线';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '巡更人员',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入巡更人员';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '巡更时间',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入巡更时间';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '巡更结果',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入巡更结果';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitSection() {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: controller.submitForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          padding: EdgeInsets.symmetric(vertical: 12.h),
        ),
        child: Text(
          '提交登记',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
