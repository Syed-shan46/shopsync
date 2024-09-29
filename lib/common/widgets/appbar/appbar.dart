import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_sync/utils/device/device_utility.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {super.key,
        this.title,
        this.showBackArrow = false,
        this.leadingIcon,
        this.actions,
        this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
          onPressed: () => Get.back(),
          icon:   Icon(Icons.arrow_back_ios_new,size: 20,color: Colors
              .blue.withOpacity(0.8),))
            : leadingIcon != null
            ? IconButton(
            onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}
