import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/common/widgets/icons/circular_icon.dart';
import 'package:shop_sync/common/widgets/image/my_circular_image.dart';
import 'package:shop_sync/common/widgets/texts/product_price.dart';
import 'package:shop_sync/common/widgets/texts/product_title_text.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';


class MyProductCartVertical extends StatelessWidget {
  const MyProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){},
      child: Container(

        width: 180,

        decoration: BoxDecoration(
          //boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),

        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// thumbnail, wishlist button,discount tag,
            MyCircularContainer(

              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor:Colors.grey,
              child: Stack(

                children: [
                  /// thumbnail image
                  const MyCircularImage(image: MyImages.productImage1),

                  /// sale tag
                  Positioned(
                    top: 10,
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

                  /// favourite icon button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: MySizes.spaceBtwItems / 2),

            /// details
            const Padding(
              padding: EdgeInsets.only(left: MySizes.sm),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// title
                    MyProductTitleText(
                      title: 'Nike Air Shoe',
                      smallSize: true,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: MySizes.spaceBtwItems / 2),

                    /// brand
                  ],

                ),
              ),
            ),

            const Spacer(),
            /// price & add to cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// product price

                const  Padding(
                  padding:  EdgeInsets.only(left: MySizes.sm),
                  child:  MyProductPriceText(price: '35.0', isLarge: true,),
                ),

                /// add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
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
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
