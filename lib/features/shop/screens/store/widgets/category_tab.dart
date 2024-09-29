import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/brand/brand_show_case.dart';
import 'package:shop_sync/common/widgets/texts/my_section_heading.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/product_card.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            /// 3 Brand images
            const Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: MyBrandShowCase(images: [
                MyImages.productImage1,
                MyImages.productImage2,
                MyImages.productImage4
              ]),
            ),

            /// 3 Brand images
            const Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: MyBrandShowCase(images: [
                MyImages.productImage4,
                MyImages.productImage3,
                MyImages.productImage5
              ]),
            ),

            /// You might like
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
              child: MySectionHeading(title: 'You might like', onPressed: () {}),
            ),
            const SizedBox(height: MySizes.spaceBtwItems),

            /// Product card
            const MyProductCard(),
          ],
        )
      ],
    );
  }
}
