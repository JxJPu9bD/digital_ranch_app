import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailController extends GetxController {
  late WebViewController webViewController;
  final isLoading = true.obs;
  final url = ''.obs;

  @override
  void onInit() {
    super.onInit();
    url.value = Get.arguments['url'] ?? '';
    
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            isLoading.value = true;
          },
          onPageFinished: (String url) {
            isLoading.value = false;
          },
          onWebResourceError: (WebResourceError error) {
            print('WebView error: ${error.description}');
          },
        ),
      )
      ..loadRequest(Uri.parse(url.value));
  }

  void goBack() => Get.back();
}
