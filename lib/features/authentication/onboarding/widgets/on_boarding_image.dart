import 'package:flutter/material.dart';
import 'package:shop_sync/utils/constants/sizes.dart';
import 'package:shop_sync/utils/helpers/helper_functions.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  final String image, subtitle, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: MyHelperFunctions.screenWidth() * 0.8,
            height: MyHelperFunctions.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: MySizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
