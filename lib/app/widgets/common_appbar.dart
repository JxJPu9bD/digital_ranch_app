import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_theme.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showRanchSelector;
  final bool showQrScanner;
  final bool showNotification;
  final VoidCallback? onRanchTap;
  final VoidCallback? onQrTap;
  final VoidCallback? onNotificationTap;

  const CommonAppBar({
    Key? key,
    this.title,
    this.showRanchSelector = true,
    this.showQrScanner = true,
    this.showNotification = true,
    this.onRanchTap,
    this.onQrTap,
    this.onNotificationTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: showRanchSelector
          ? InkWell(
              onTap: onRanchTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title ?? '中禾恒瑞（内蒙）'),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            )
          : Text(title ?? ''),
      actions: [
        if (showQrScanner)
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: onQrTap,
          ),
        if (showNotification)
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: onNotificationTap,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '99+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          color: Colors.white,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  '当前牧场',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
} 