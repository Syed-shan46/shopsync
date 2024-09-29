import 'package:flutter/material.dart';
import 'package:shop_sync/features/authentication/controllers/on_boarding_image_controller.dart';
import 'package:shop_sync/utils/constants/sizes.dart';
import 'package:shop_sync/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 10,
        right: MySizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(100,44),
            backgroundColor: Colors.blue.withOpacity(0.8),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
          child: Row(
            children: [
              Text(
                'Next ',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 17,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_forward,
                color: Colors.white.withOpacity(0.8),
                size: 18,
              )
            ],
          ),
        ));
  }
}
