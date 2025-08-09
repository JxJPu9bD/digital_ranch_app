import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'usage_review_controller.dart';

class UsageReviewView extends GetView<UsageReviewController> {
  const UsageReviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('领用审核'), leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: controller.goBack)),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(children: [
          _row('物资名称', '示例物资'),
          SizedBox(height: 12.h),
          _row('数量', '10'),
          SizedBox(height: 12.h),
          _row('领用人', '张三'),
          const Spacer(),
          Row(children: [
            Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red), onPressed: controller.reject, child: const Text('驳回'))),
            SizedBox(width: 12.w),
            Expanded(child: ElevatedButton(onPressed: controller.approve, child: const Text('通过'))),
          ]),
        ]),
      ),
    );
  }

  Widget _row(String k, String v) => Row(
        children: [
          Expanded(child: Text(k)),
          Expanded(child: Text(v, textAlign: TextAlign.right)),
        ],
      );
}
