import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/core/config/env_config.dart';
import 'app/core/utils/storage_util.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // 初始化环境配置
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'dev',
  );
  EnvConfig().setEnvironment(
    environment == 'prod' ? Environment.prod : Environment.dev,
  );

  // 初始化本地存储
  await StorageUtil.init();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: '数字肉牛',
          theme: AppTheme.lightTheme,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.pages,
          defaultTransition: Transition.fadeIn,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
