import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/app_theme.dart';
import '../../widgets/common_appbar.dart';
import 'business_record_controller.dart';

class BusinessRecordView extends GetView<BusinessRecordController> {
  const BusinessRecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: TabBar(
              controller: controller.tabController,
              isScrollable: true,
              labelColor: AppTheme.primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppTheme.primaryColor,
              indicatorWeight: 3,
              labelStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(horizontal: 16.w),
              indicatorPadding: EdgeInsets.zero,
              tabs: controller.tabs.map((tab) => Tab(
                text: tab,
                height: 46.h,
              )).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                _buildBusinessGrid(),
                _buildBusinessGrid(),
                _buildBusinessGrid(),
                _buildBusinessGrid(),
                _buildBusinessGrid(),
                _buildBusinessGrid(),
                _buildBusinessGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBusinessGrid() {
    return Obx(() {
      final items = controller.getCurrentItems();
      return GridView.builder(
        padding: EdgeInsets.all(16.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 0.8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () => controller.onItemTap(item),
            child: Container(
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
                  Image.asset(
                    'assets/icons/${item['icon']}.png',
                    width: 48.w,
                    height: 48.w,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.business,
                        size: 48.w,
                        color: Color(item['color'] as int),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    item['title'] as String,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppTheme.textColor,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
} 