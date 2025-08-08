import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/app_theme.dart';
import 'profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildCompanyInfo(),
            Expanded(
              child: _buildMenuList(),
            ),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(24.w),
      child: Column(
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Obx(() => Text(
                controller.userName.value.substring(0, 1),
                style: TextStyle(
                  fontSize: 32.sp,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          SizedBox(height: 16.h),
          Obx(() => Text(
            controller.userName.value,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor,
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildCompanyInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
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
      child: InkWell(
        onTap: controller.switchCompany,
        child: Row(
          children: [
            Icon(
              Icons.business,
              color: AppTheme.primaryColor,
              size: 24.w,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Obx(() => Text(
                controller.companyName.value,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppTheme.textColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
            ),
            Icon(
              Icons.sync,
              color: AppTheme.primaryColor,
              size: 24.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuList() {
    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: controller.menuItems.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        final item = controller.menuItems[index];
        return InkWell(
          onTap: () => controller.onMenuItemTap(item),
          child: Container(
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
            child: Row(
              children: [
                Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: BoxDecoration(
                    color: Color(item['color'] as int).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _getMenuIcon(item['icon'] as String),
                    color: Color(item['color'] as int),
                    size: 16.w,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    item['title'] as String,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppTheme.textColor,
                    ),
                  ),
                ),
                if (item['showTime'] == true)
                  Obx(() => Text(
                    controller.lastUpdateTime.value,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey[600],
                    ),
                  )),
                if (item['showTime'] != true)
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey[400],
                    size: 24.w,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLogoutButton() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      child: ElevatedButton(
        onPressed: controller.logout,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          '退出登录',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  IconData _getMenuIcon(String icon) {
    switch (icon) {
      case 'person':
        return Icons.person_outline;
      case 'password':
        return Icons.lock_outline;
      case 'settings':
        return Icons.settings;
      case 'battery':
        return Icons.battery_charging_full;
      case 'network':
        return Icons.wifi;
      case 'time':
        return Icons.access_time;
      case 'update':
        return Icons.system_update;
      case 'cache':
        return Icons.refresh;
      default:
        return Icons.circle;
    }
  }
} 