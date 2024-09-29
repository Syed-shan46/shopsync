import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/texts/my_section_heading.dart';
import 'package:shop_sync/features/shop/screens/product_review/product_review.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MySectionHeading(
          title: 'Reviews (658)',
          showActionbutton: false,
        ),
        IconButton(
            onPressed: (){},
            icon: GestureDetector(
              onTap: () => Get.to(() => const ProductReviewSceen()),
              child: const Icon(
                Iconsax.arrow_right_3,
                size: 18,
              ),
            ))
      ],
    );
  }
}