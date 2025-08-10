import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'consultation_publish_controller.dart';

class ConsultationPublishView extends GetView<ConsultationPublishController> {
  const ConsultationPublishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('发布问诊'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
        actions: [
          TextButton(
            onPressed: controller.saveConsultation,
            child: Text(
              '保存',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRequiredTitle('标题'),
              _buildTextField(
                controller: controller.titleController,
                hintText: '请输入标题',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入标题';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              _buildRequiredTitle('内容'),
              _buildTextField(
                controller: controller.contentController,
                hintText: '请输入内容',
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入内容';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              _buildTitle('照片'),
              _buildImagePicker(),
              SizedBox(height: 16.h),
              _buildTitle('视频'),
              _buildVideoPicker(),
              SizedBox(height: 16.h),
              _buildRequiredTitle('发布人'),
              _buildTextField(
                controller: controller.publisherController,
                hintText: '请输入姓名',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入姓名';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              _buildRequiredTitle('发布人手机号'),
              _buildTextField(
                controller: controller.phoneController,
                hintText: '请输入手机号',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入手机号';
                  }
                  if (!GetUtils.isPhoneNumber(value)) {
                    return '请输入正确的手机号';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRequiredTitle(String title) {
    return Row(
      children: [
        Text(
          '*',
          style: TextStyle(
            color: Colors.red,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    int maxLines = 1,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          contentPadding: EdgeInsets.all(12.w),
        ),
        validator: validator,
      ),
    );
  }

  Widget _buildImagePicker() {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      child: Obx(() => Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        children: [
          ...controller.images.asMap().entries.map((entry) {
            return Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: AssetImage(entry.value),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () => controller.removeImage(entry.key),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
          if (controller.images.length < 9)
            InkWell(
              onTap: controller.pickImage,
              child: Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 32.sp,
                  color: Colors.grey,
                ),
              ),
            ),
        ],
      )),
    );
  }

  Widget _buildVideoPicker() {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      child: Obx(() => Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        children: [
          ...controller.videos.asMap().entries.map((entry) {
            return Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.play_circle_fill,
                    size: 32.sp,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () => controller.removeVideo(entry.key),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
          if (controller.videos.isEmpty)
            InkWell(
              onTap: controller.pickVideo,
              child: Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.videocam,
                  size: 32.sp,
                  color: Colors.grey,
                ),
              ),
            ),
        ],
      )),
    );
  }
}
