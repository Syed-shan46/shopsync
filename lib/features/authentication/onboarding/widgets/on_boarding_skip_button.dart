import 'package:flutter/material.dart';
import 'package:shop_sync/features/authentication/controllers/on_boarding_image_controller.dart';

import 'package:shop_sync/utils/constants/sizes.dart';
import 'package:shop_sync/utils/device/device_utility.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 10,
      left: MySizes.defaultSpace / 2,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child:   Row(
            children: [
              Text("Skip ",style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,fontSize: 17),),

            ],
          ),
    ));
  }
}