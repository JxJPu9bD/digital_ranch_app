import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_theme.dart';
import 'entry_record_controller.dart';

class EntryRecordView extends GetView<EntryRecordController> {
  const EntryRecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入场登记'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
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
                _buildFormSection(),
                _buildImagePicker(),
                _buildSubmitSection(),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildFormSection() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField(label: '来源场耳号', hint: '请输入来源场耳号(非必填)', onChanged: (value) => controller.updateFormData('sourceFarmShortTag', value)),
          _buildTextField(label: '新耳标号', hint: '请输入新牛号', required: true, suffixIcon: Icons.qr_code_scanner, onChanged: (value) => controller.updateFormData('earTag', value)),
          _buildTextField(label: '场内管理号', hint: '请输入场内管理号', onChanged: (value) => controller.updateFormData('farmInternalId', value)),
          _buildDropdownField(label: '目标牛舍', value: controller.formData.value['penName'] ?? '泌乳牛02-3', required: true, onTap: () => _showOptionsDialog('penName', ['泌乳牛02-3', '后备牛舍'])),
          _buildDropdownField(label: '性别', value: controller.formData.value['gender'] ?? '公牛', required: true, onTap: () => _showOptionsDialog('gender', ['公牛', '母牛'])),
          _buildTextField(label: '胎次', initialValue: controller.formData.value['parity']?.toString() ?? '0', required: true, onChanged: (value) => controller.updateFormData('parity', value)),
          _buildDropdownField(label: '养殖种类', value: controller.formData.value['breedingType'] ?? '育种牛', required: true, onTap: () => _showOptionsDialog('breedingType', ['育种牛', '奶牛'])),
          _buildDropdownField(label: '牛群状态', value: controller.formData.value['growthStage'] ?? '犊牛', required: true, onTap: () => _showOptionsDialog('growthStage', ['犊牛', '青年牛'])),
          _buildDropdownField(label: '繁育状态', value: controller.formData.value['reproductionStatus'] ?? '尚未配种', required: true, onTap: () => _showOptionsDialog('reproductionStatus', ['尚未配种', '已配种'])),
          _buildDateField(label: '出生日期', value: controller.formData.value['birthDate'] ?? '2025-08-19', required: true, onTap: () => _selectDate(Get.context!)),
          _buildDropdownField(label: '品种', value: controller.formData.value['breed'] ?? '和牛', required: true, onTap: () => _showOptionsDialog('breed', ['和牛', '安格斯'])),
          _buildDropdownField(label: '花色', value: controller.formData.value['coatColor'] ?? '黑', required: true, onTap: () => _showOptionsDialog('coatColor', ['黑', '白', '黄'])),
          _buildDropdownField(label: '是否有牛角', value: controller.formData.value['hornStatus'] ?? '无牛角', required: true, onTap: () => _showOptionsDialog('hornStatus', ['无牛角', '有牛角'])),
          _buildTextField(label: '体重(kg)', hint: '请输入牛只体重', required: true, keyboardType: TextInputType.number, onChanged: (value) => controller.updateFormData('entryWeight', value)),
          _buildTextField(label: '保险单号', hint: '请输入保险单号', onChanged: (value) => controller.updateFormData('insuranceNumber', value)),
          _buildTextField(label: '监管耳标号', hint: '请输入监管耳标号', suffixText: '同上', suffixIcon: Icons.qr_code_scanner, onChanged: (value) => controller.updateFormData('regulatoryEarTag', value)),
          _buildTextField(label: '项圈序列号', hint: '请输入项圈序列号', suffixIcon: Icons.qr_code_scanner, onChanged: (value) => controller.updateFormData('projectSerialNumber', value)),
          _buildDropdownField(label: '项圈类型', value: controller.formData.value['projectType'] ?? '有源资产标', onTap: () => _showOptionsDialog('projectType', ['有源资产标', '无源资产标'])),
          _buildTextField(label: '进场金额', hint: '请输入进场金额(单位:元)', keyboardType: TextInputType.number, onChanged: (value) => controller.updateFormData('entryPrice', value)),
          _buildDropdownField(label: '供应商', value: controller.formData.value['supplierName'] ?? '内蒙', required: true, onTap: () => _showOptionsDialog('supplierName', ['内蒙', '外蒙'])),
        ],
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      controller.updateFormData('birthDate', picked.toIso8601String().split('T').first);
    }
  }

  Widget _buildTextField({
    required String label,
    String? hint,
    String? initialValue,
    bool required = false,
    IconData? suffixIcon,
    String? suffixText,
    TextInputType? keyboardType,
    required ValueChanged<String> onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 100.w,
            child: Row(
              children: [
                if (required) Text('* ', style: TextStyle(color: Colors.red, fontSize: 14.sp)),
                Text(label, style: TextStyle(fontSize: 14.sp)),
              ],
            ),
          ),
          Expanded(
            child: TextFormField(
              initialValue: initialValue,
              textAlign: TextAlign.right,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
                suffixText: suffixText,
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
    bool required = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            SizedBox(
              width: 100.w,
              child: Row(
                children: [
                  if (required) Text('* ', style: TextStyle(color: Colors.red, fontSize: 14.sp)),
                  Text(label, style: TextStyle(fontSize: 14.sp)),
                ],
              ),
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

  Widget _buildDateField({
    required String label,
    required String value,
    bool required = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            SizedBox(
              width: 100.w,
              child: Row(
                children: [
                  if (required) Text('* ', style: TextStyle(color: Colors.red, fontSize: 14.sp)),
                  Text(label, style: TextStyle(fontSize: 14.sp)),
                ],
              ),
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

  Widget _buildSubmitSection() {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: controller.submitForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          '提交',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
