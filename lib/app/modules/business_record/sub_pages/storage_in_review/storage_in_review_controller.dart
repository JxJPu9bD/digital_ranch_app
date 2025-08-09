import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StorageInReviewController extends GetxController {
  final formKey = GlobalKey<FormState>();
  void goBack() => Get.back();
  void approve() {
    Get.snackbar('成功', '入库审核通过');
    Get.back();
  }
  void reject() {
    Get.snackbar('已拒绝', '入库审核驳回');
    Get.back();
  }
}
