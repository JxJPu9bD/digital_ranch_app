import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ConsultationPublishController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final publisherController = TextEditingController();
  final phoneController = TextEditingController();

  final images = <String>[].obs;
  final videos = <String>[].obs;
  final ImagePicker _picker = ImagePicker();

  @override
  void onClose() {
    titleController.dispose();
    contentController.dispose();
    publisherController.dispose();
    phoneController.dispose();
    super.onClose();
  }

  void goBack() => Get.back();

  // 选择图片
  Future<void> pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        // TODO: 处理图片上传
        images.add(image.path);
      }
    } catch (e) {
      print('选择图片失败: $e');
    }
  }

  // 选择视频
  Future<void> pickVideo() async {
    try {
      final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
      if (video != null) {
        // TODO: 处理视频上传
        videos.add(video.path);
      }
    } catch (e) {
      print('选择视频失败: $e');
    }
  }

  // 删除图片
  void removeImage(int index) {
    if (index >= 0 && index < images.length) {
      images.removeAt(index);
    }
  }

  // 删除视频
  void removeVideo(int index) {
    if (index >= 0 && index < videos.length) {
      videos.removeAt(index);
    }
  }

  // 保存问诊
  Future<void> saveConsultation() async {
    if (formKey.currentState?.validate() ?? false) {
      try {
        // TODO: 实现保存逻辑
        await Future.delayed(const Duration(seconds: 1));
        Get.back(result: true);
      } catch (e) {
        print('保存失败: $e');
        Get.snackbar('错误', '保存失败，请重试');
      }
    }
  }
}
