import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'news_detail_controller.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  const NewsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新闻详情'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.goBack,
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller.webViewController,
          ),
          Obx(() => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : const SizedBox()),
        ],
      ),
    );
  }
}
