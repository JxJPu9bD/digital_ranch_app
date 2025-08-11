import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calf_business_controller.dart';

class CalfBusinessView extends GetView<CalfBusinessController> {
  const CalfBusinessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('栅牛业务'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
      ),
      body: Column(
        children: [
          _buildHeader(context),
          _buildTabs(),
          Expanded(child: _buildTabViews()),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => RichText(
                text: TextSpan(
                  text: '业务数量：',
                  style: TextStyle(color: Colors.black87, fontSize: 16.sp),
                  children: [
                    TextSpan(
                      text: controller.totalCount.value.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 18.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          SizedBox(height: 10.h),
          InkWell(
            onTap: () async {
              await controller.pickStartDate(context);
              await controller.pickEndDate(context);
            },
            child: Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Obx(() => Row(
                    children: [
                      const Text('选择日期  开始: '),
                      Text(controller.formatDate(controller.startDate.value), style: const TextStyle(color: Colors.blue)),
                      const Text('  >  结束: '),
                      Text(controller.formatDate(controller.endDate.value), style: const TextStyle(color: Colors.blue)),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return TabBar(
      controller: controller.tabController,
      isScrollable: true,
      tabs: const [
        Tab(text: '产犊信息'),
        Tab(text: '栅牛信息'),
        Tab(text: '断奶信息'),
      ],
      labelColor: Colors.green,
      unselectedLabelColor: Colors.black87,
      indicatorColor: Colors.green,
    );
  }

  Widget _buildTabViews() {
    return TabBarView(
      controller: controller.tabController,
      children: [
        _buildList(controller.calvingInfoList),
        _buildList(controller.calfInfoList),
        _buildList(controller.weaningInfoList),
      ],
    );
  }

  Widget _buildList(RxList<Map<String, String>> data) {
    return Obx(() {
      if (controller.isLoading.value && data.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
      if (data.isEmpty) {
        return Center(
          child: Text('暂无数据', style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
        );
      }
      return ListView.separated(
        padding: EdgeInsets.all(12.w),
        itemCount: data.length,
        separatorBuilder: (_, __) => SizedBox(height: 12.h),
        itemBuilder: (_, i) => _buildItem(data[i]),
      );
    });
  }

  Widget _buildItem(Map<String, String> item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(12.w),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(Icons.pets, color: Colors.white, size: 28.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(item['earTag'] ?? '', style: TextStyle(color: Colors.blue, fontSize: 16.sp, fontWeight: FontWeight.w700)),
                    SizedBox(width: 8.w),
                    Text(item['group'] ?? '', style: TextStyle(fontSize: 14.sp, color: Colors.black87)),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Text(item['date'] ?? '', style: TextStyle(fontSize: 13.sp, color: Colors.black87)),
                    SizedBox(width: 12.w),
                    Text(item['operator'] ?? '', style: TextStyle(fontSize: 13.sp, color: Colors.black87)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
