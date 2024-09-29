import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/features/shop/screens/store/widgets/brand_card.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyCircularContainer(
      showBorder: true,
      borderColor: Colors.grey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with products count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItems),
          /// 3 products images
          Row(
            children: images
                .map((image) => BrandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget BrandTopProductImageWidget(String image, context) {
    return Expanded(
        child: MyCircularContainer(
          padding: EdgeInsets.all(8),
      backgroundColor: Colors.grey.withOpacity(0.2),
      height: 100,
      margin: const EdgeInsets.only(right: MySizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ));
  }
}
