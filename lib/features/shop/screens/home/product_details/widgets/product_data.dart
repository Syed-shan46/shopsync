import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/common/widgets/image/my_circular_image.dart';
import 'package:shop_sync/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:shop_sync/common/widgets/texts/product_price.dart';
import 'package:shop_sync/common/widgets/texts/product_title_text.dart';
import 'package:shop_sync/utils/constants/enums.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyProductData extends StatelessWidget {
  const MyProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// price & sale price
        Row(
          children: [
            /// sale tag
            MyCircularContainer(
              radius: MySizes.sm,
              backgroundColor: Colors.yellow.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text('25%',  style: Theme.of(context).textTheme
                  .labelLarge!.apply(color: Colors.black),),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),

            /// price
            Text('\$260', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: MySizes.spaceBtwItems,),
            const MyProductPriceText(price: '175', isLarge: true,),

          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// title
        const MyProductTitleText(title: 'Green Nike Shirt'),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// stock status
        Row(
          children: [
            const MyProductTitleText(title: 'Status'),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('In Stock', style: Theme.of(context).textTheme.titleSmall)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// brand
        const Row(children: [
          MyCircularImage(image: MyImages.nikeLogo,width: 32,height: 32,),
          MyBrandTitleWithVerifiedIcon(title: ' Nike', brandTextSize: TextSizes.medium,)
        ],)
      ],
    );
  }
}
