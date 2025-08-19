import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'exit_record_controller.dart';

class ExitRecordView extends GetView<ExitRecordController> {
  const ExitRecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('离场登记'),
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField(
            label: '离场牛号',
            hint: '请输入牛号',
            suffixIcon: Icons.qr_code_scanner,
            onChanged: (value) => controller.updateFormData('cattleNo', value),
          ),
          _buildDropdownField(
            label: '离场方式',
            value: controller.formData.value['exitType'] ?? '出售',
            onTap: () => _showOptionsDialog('exitType', ['出售', '死亡', '其他']),
          ),
          _buildDropdownField(
            label: '离场原因',
            value: controller.formData.value['exitReason'] ?? '出售',
            onTap: () => _showOptionsDialog('exitReason', ['出售', '死亡', '其他']),
          ),
          _buildTextField(
            label: '处理意见',
            hint: '请输入处理意见',
            onChanged: (value) => controller.updateFormData('remark', value),
          ),
          _buildSwitchField(
            label: '主动淘汰',
            value: controller.formData.value['isInitiative'] ?? false,
            onChanged: (value) => controller.updateFormData('isInitiative', value),
          ),
          _buildTextField(
            label: '体重',
            hint: '请输入体重',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('weight', value),
          ),
          _buildTextField(
            label: '胸体重',
            hint: '请输入胸体重',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('chestGirth', value),
          ),
          _buildTextField(
            label: '单价(不含税)',
            hint: '请输入单价',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('priceWithoutTax', value),
          ),
          _buildTextField(
            label: '单价(含税)',
            hint: '请输入单价',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('priceWithTax', value),
          ),
          _buildTextField(
            label: '离场金额(不含税)',
            hint: '请输入离场金额',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('amountWithoutTax', value),
          ),
          _buildTextField(
            label: '离场金额(含税)',
            hint: '请输入离场金额',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('amountWithTax', value),
          ),
          _buildDropdownField(
            label: '买家',
            value: controller.formData.value['buyer'] ?? '内蒙',
            onTap: () => _showOptionsDialog('buyer', ['内蒙', '外蒙']),
          ),
          _buildTextField(
            label: '税点',
            hint: '请输入税点',
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.updateFormData('taxRate', value),
          ),
          _buildImagePicker(),
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

  Widget _buildTextField({
    required String label,
    required String hint,
    IconData? suffixIcon,
    TextInputType? keyboardType,
    required ValueChanged<String> onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 120.w,
            child: Text(label, style: TextStyle(fontSize: 14.sp)),
          ),
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.right,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
              ),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            SizedBox(
              width: 120.w,
              child: Text(label, style: TextStyle(fontSize: 14.sp)),
            ),
            Expanded(
              child: Text(
                value,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 14.sp),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchField({
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 120.w,
            child: Text(label, style: TextStyle(fontSize: 14.sp)),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Switch(
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagePicker() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: Center(
        child: GestureDetector(
          onTap: controller.pickImage,
          child: Column(
            children: [
              Obx(() {
                return controller.selectedImage.value == null
                    ? Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.camera_alt, color: Colors.grey),
                      )
                    : Image.file(
                        controller.selectedImage.value!,
                        width: 80.w,
                        height: 80.w,
                        fit: BoxFit.cover,
                      );
              }),
              SizedBox(height: 8.h),
              Text('添加照片', style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  void _showOptionsDialog(String key, List<String> options) {
    Get.dialog(
      AlertDialog(
        title: Text('选择$key'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(options[index]),
                onTap: () {
                  controller.updateFormData(key, options[index]);
                  Get.back();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
