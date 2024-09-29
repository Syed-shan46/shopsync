import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_sync/features/authentication/controllers/on_boarding_image_controller.dart';
import 'package:shop_sync/features/authentication/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:shop_sync/features/authentication/onboarding/widgets/on_boarding_next_button.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';



import 'widgets/on_boarding_image.dart';
import 'widgets/on_boarding_skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [


          /// Onboarding Images
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingImage(image: MyImages.onBoardingImage1,title: 'Choose your Product',
                subtitle:
                    'Welcome to a World of Limitless Choices - Your Perfect Product Awaits!',
              ),

              OnBoardingImage(image: MyImages.onBoardingImage2,title: 'Select Payment Method',
                subtitle:
                'For Seamless Transactions, Choose Your Payment Path - Your Convenience, OUr Priority!',
              ),

              OnBoardingImage(image: MyImages.onBoardingImage3,title: 'Deliver at your Doorstep',
                subtitle:
                'From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery',
              ),
            ],
          ),

          /// Skip Button
          const SkipButton(),

          /// Dot Navigation
          const OnBoardingNavigation(),

          /// Next Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

