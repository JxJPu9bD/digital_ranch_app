import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'ear_tag_reissue_controller.dart';

class EarTagReissueView extends GetView<EarTagReissueController> {
  const EarTagReissueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('耳标补发'),
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
              labelText: '原耳标号',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入原耳标号';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '补发耳标号',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入补发耳标号';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '补发日期',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入补发日期';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '补发原因',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入补发原因';
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
