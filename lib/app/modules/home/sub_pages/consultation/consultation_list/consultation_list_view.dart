import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'consultation_list_controller.dart';

class ConsultationListView extends GetView<ConsultationListController> {
  const ConsultationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('在线问诊'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: _buildConsultationList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey, size: 20.sp),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: TextField(
                      controller: controller.searchController,
                      decoration: const InputDecoration(
                        hintText: '请搜索信息标题',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSubmitted: controller.search,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16.w),
          TextButton(
            onPressed: controller.publishConsultation,
            child: Text(
              '发布',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConsultationList() {
    return Obx(() {
      if (controller.consultationList.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.inbox,
                size: 64.sp,
                color: Colors.green,
              ),
              SizedBox(height: 16.h),
              Text(
                '没有数据',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: controller.refreshData,
        child: ListView.separated(
          padding: EdgeInsets.all(16.w),
          itemCount: controller.consultationList.length + 1,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            if (index == controller.consultationList.length) {
              return _buildLoadMore();
            }
            return _buildConsultationItem(controller.consultationList[index]);
          },
        ),
      );
    });
  }

  Widget _buildConsultationItem(Map consultation) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            consultation['title'] ?? '',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            consultation['content'] ?? '',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                consultation['publisher'] ?? '',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                consultation['date'] ?? '',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLoadMore() {
    return Obx(() {
      if (controller.isLoading.value) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        );
      }
      if (!controller.hasMore.value) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          alignment: Alignment.center,
          child: Text(
            '没有更多数据',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
        );
      }
      return InkWell(
        onTap: () => controller.loadData(),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          alignment: Alignment.center,
          child: Text(
            '加载更多',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.blue,
            ),
          ),
        ),
      );
    });
  }
}
