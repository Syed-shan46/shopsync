import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/image/my_circular_image.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';

import '../../../utils/constants/sizes.dart';
import '../custom_shapes/circular_container.dart';
import '../icons/circular_icon.dart';
import '../texts/my_brand_title_with_verified_icon.dart';
import '../texts/product_price.dart';
import '../texts/product_title_text.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: Colors.blue.shade50,
      ),
      child: Row(
        children: [
          /// thumbnail
          MyCircularContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: Colors.blueAccent.withOpacity(0.2),
            child: const Stack(
              children: [
                /// thumbnail image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: MyCircularImage(
                    image: MyImages.productImage1,
                  ),
                ),

                /// sale tag
                /* Positioned(
                  top: 8,
                  child: MyCircularContainer(
                    radius: MySizes.sm,
                    backgroundColor: Colors.yellow.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm, vertical: MySizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),

                 */

                /// favourite icon button
                 Positioned(
                  right: -10,
                  top: -10,
                  child: MyCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         'Nike Black Sports Shoe',
                         style: TextStyle(color: Colors.black.withOpacity(0.9)),
                      ),
                      const SizedBox(height: MySizes.spaceBtwItems / 2),
                       Row(
                        children: [
                          Text('Nike ',style: TextStyle(color: Colors.black
                              .withOpacity(0.9)),),
                          Icon(Iconsax.verify5,size: 15,color: Colors.blue,)
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// pricing
                       Flexible(
                          child: Text('400.0 - 233433',style: TextStyle
                            (color: Colors.black.withOpacity(0.9)),)),

                      /// add to cart
                      Container(
                        decoration:  BoxDecoration(
                          color: Colors.blue.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(MySizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          height: MySizes.iconLg * 1.2,
                          width: MySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
