import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'news_list_controller.dart';

class NewsListView extends GetView<NewsListController> {
  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey, size: 20.sp),
              SizedBox(width: 8.w),
              Text(
                '请搜索信息标题',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        bottom: TabBar(
          controller: controller.tabController,
          tabs: const [
            Tab(text: '公告'),
            Tab(text: '宣传'),
            Tab(text: '专家文章'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: List.generate(3, (index) => _buildNewsList()),
      ),
    );
  }

  Widget _buildNewsList() {
    return Obx(() => RefreshIndicator(
      onRefresh: controller.refreshData,
      child: ListView.separated(
        padding: EdgeInsets.all(16.w),
        itemCount: controller.newsList.length + 1,
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) {
          if (index == controller.newsList.length) {
            return _buildLoadMore();
          }
          final news = controller.newsList[index];
          return _buildNewsItem(news);
        },
      ),
    ));
  }

  Widget _buildNewsItem(Map news) {
    return InkWell(
      onTap: () => controller.openNewsDetail(news['url']),
      child: Container(
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
        child: Row(
          children: [
            Container(
              width: 60.w,
              height: 60.w,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.article,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news['title'],
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    news['date'],
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
