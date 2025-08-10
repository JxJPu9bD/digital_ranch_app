import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/app_theme.dart';
import '../../widgets/common_appbar.dart';
import 'home_controller.dart';
import '../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: controller.currentRanch.value,
        onRanchTap: () {
          // TODO: 实现牧场选择功能
        },
        onQrTap: () {
          // TODO: 实现扫码功能
        },
        onNotificationTap: () {
          // TODO: 实现消息通知功能
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStatsSection(),
            _buildQuickAccessSection(),
            _buildTaskSection(),
            _buildIconGridSection('数据分析', 'assets/icons/title_sjfx.png', controller.dataAnalysisItems),
            _buildIconGridSection('数据报表', 'assets/icons/title_sjbb.png', controller.dataReportItems),
            _buildIconGridSection('数据汇报表', 'assets/icons/title_sjhbb.png', controller.dataSummaryItems),
            _buildIconGridSection('结构图表', 'assets/icons/title_jgtb.png', controller.structureChartItems),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildStatCard(
                  '存栏总数',
                  controller.totalCattle.toString(),
                  '头',
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  '牧场总数',
                  controller.totalRanches.toString(),
                  '个',
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  '新生犊牛',
                  controller.newCattle.toString(),
                  '头',
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildStatCard(
                  '离场犊牛',
                  controller.leavingCattle.toString(),
                  '头',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, String unit) {
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
            title,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                ),
              ),
              SizedBox(width: 4.w),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessSection() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Row(
        children: [
          Expanded(
            child: _buildQuickAccessCard(
              '新闻资讯',
              'News Advisory',
              Icons.newspaper,
              () {
                Get.toNamed(Routes.NEWS_LIST);
              },
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: _buildQuickAccessCard(
              '在线问诊',
              'Online Consultation',
              Icons.medical_services,
              () {
                Get.toNamed(Routes.CONSULTATION_LIST);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessCard(
    String title,
    String subtitle,
    IconData icon,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
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
            Icon(
              icon,
              color: AppTheme.primaryColor,
              size: 24.w,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey[600],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskSection() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = (constraints.maxWidth - 64.w) / 3;
        return Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '待完成工作',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor,
                    ),
                  ),
                  Text(
                    '近一周',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.w,
                  crossAxisSpacing: 16.w,
                  mainAxisExtent: 80.h,
                ),
                itemCount: controller.taskStats.length,
                itemBuilder: (context, index) {
                  final entry = controller.taskStats.entries.elementAt(index);
                  return _buildTaskCard(entry.key, entry.value.toString());
                },
              ),

              SizedBox(height: 16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '已完成工作',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor,
                    ),
                  ),
                  Text(
                    '近一周',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.w,
                  crossAxisSpacing: 16.w,
                  mainAxisExtent: 80.h,
                ),
                itemCount: controller.completedTaskStats.length,
                itemBuilder: (context, index) {
                  final entry = controller.completedTaskStats.entries.elementAt(index);
                  return _buildTaskCard(entry.key, entry.value.toString());
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTaskCard(String title, String count) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          Text(
            count,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconGridSection(String title, String titleIcon, List<Map<String, String>> items) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(titleIcon, width: 28.w, height: 28.w, errorBuilder: (_, __, ___) => Icon(Icons.insert_chart, color: AppTheme.primaryColor, size: 24.w)),
              SizedBox(width: 8.w),
              Text(
                title,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppTheme.textColor),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w,
              childAspectRatio: 0.9,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return _buildIconItem(item['title']!, item['icon']!, () => controller.onHomeItemTap(item));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildIconItem(String title, String iconName, VoidCallback onTap) {
    return Container(
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
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/$iconName.png',
              width: 48.w,
              height: 48.w,
              errorBuilder: (_, __, ___) => Icon(Icons.widgets, color: AppTheme.primaryColor, size: 28.w),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: TextStyle(fontSize: 12.sp, color: AppTheme.textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
} 