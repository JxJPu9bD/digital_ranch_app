import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../widgets/sub_page_appbar.dart';
import '../../../../core/utils/date_util.dart';
import 'user_info_controller.dart';

class UserInfoView extends GetView<UserInfoController> {
  const UserInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SubPageAppBar(
        title: '用户信息',
        onBackPressed: controller.goBack,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        
        return ListView(
          padding: EdgeInsets.all(16.w),
          children: [
            _buildInfoItem('登录名称', controller.userInfo['username'] ?? ''),
            _buildInfoItem('用户昵称', controller.userInfo['nickName'] ?? ''),
            _buildInfoItem('所属牧场', controller.userInfo['farmName'] ?? ''),
                         _buildInfoItem('登录时间', DateUtil.formatDateTime(controller.userInfo['loginDate'])),
            if (controller.userInfo['label']?.isNotEmpty ?? false)
              _buildInfoItem('标签', controller.userInfo['label'] ?? ''),
          ],
        );
      }),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100.w,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
