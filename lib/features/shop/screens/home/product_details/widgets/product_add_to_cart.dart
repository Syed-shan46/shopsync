import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/icons/circular_icon.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyBottomAddToCart extends StatelessWidget {
  const MyBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    /// Main container starts here
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace / 2),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MySizes.cardRadiusLg),
              topRight: Radius.circular(MySizes.cardRadiusLg),
           )
      ),

      /// Add & remove icons
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              /// Remove icon
              const MyCircularIcon(
                icon: Icons.remove_circle_outline,
                backGroundColor: Colors.grey,
                width: 40,
                height: 40,

              ),
              const SizedBox(width: MySizes.spaceBtwItems / 2),

              /// Item number
              Text('02',style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: MySizes.spaceBtwItems / 2),

              /// Add icon
              const MyCircularIcon(

                icon: Icons.add_circle_outline_outlined,
                backGroundColor: Colors.black,
                width: 40,
                height: 40,

              ),
            ],
          ),

          /// Add to cart button
          SizedBox(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(MySizes.md),
                  backgroundColor: Colors.blue.withOpacity(0.8),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),

                /// Add to cart text
                child: Row(
                  children: [
                    /// Text
                    Text(
                      'Add to cart ',
                      style: TextStyle(fontSize: 16,color: Colors.white
                          .withOpacity(0.8)),
                    ),

                    /// Icon
                     Icon(Icons.shopping_cart_checkout_rounded,size: 20,
                        color: Colors.white.withOpacity(0.8),)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
