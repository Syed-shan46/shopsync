import 'package:flutter/material.dart';
import 'package:shop_sync/features/authentication/controllers/on_boarding_image_controller.dart';
import 'package:shop_sync/utils/constants/sizes.dart';
import 'package:shop_sync/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
    this.dHeight = 6,
    this.dWidth = 16,
  });

  final double dHeight;
  final double dWidth;

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 90,
      left: MySizes.defaultSpace,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect:  ExpandingDotsEffect(
              activeDotColor: Colors.blue.withOpacity(0.9),
              dotHeight: dHeight,
              dotWidth: dWidth),
        ),
      ),
    );
  }
}
