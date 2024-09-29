import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/widgets/product_add_to_cart.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/widgets/product_description.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/widgets/product_detail_image.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/widgets/product_review.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/widgets/product_size.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

import 'widgets/product_colors.dart';

class MyProductDetail extends StatelessWidget {
  const MyProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image and slider
            MyProductDetailImage(),

            /// Product Data
            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  left: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace,
                  right: MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Product details
                  ProductDetails(),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// Size
                  MyProductSize(),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// Colors
                  MyColors(),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// Description
                  MyDescription(),
                  SizedBox(height: MySizes.spaceBtwItems),
                  Divider(color: Colors.grey),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// Reviews
                  MyReviews(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Brand name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Adidas Max',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold)),
            const Text('By Adidas')
          ],
        ),

        /// Price and rating
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// Price
            Text("200.00",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.redAccent.withOpacity(0.8),
                    fontWeight: FontWeight.bold)),

            /// Rating
            const Row(
              children: [
                Icon(Iconsax.star1, size: 13, color: Colors.yellow),
                Text(' 4.4'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
