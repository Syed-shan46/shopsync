import 'package:flutter/material.dart';
import 'package:shop_sync/features/shop/screens/product_review/user_review_card.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import 'rating_bar_indicator.dart';
import 'rating_progress_indicator.dart';

class ProductReviewSceen extends StatelessWidget {
  const ProductReviewSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        /// appbar
        appBar:  MyAppBar(title: Text('Reviews & Ratings',style:
        TextStyle(color: Colors.blue.withOpacity(0.8)),),
          showBackArrow: true,),

      /// body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially"),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// overall product rating
              const rating_progress_indicator(),
              const MyRatingBarIndicator(rating: 3.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// user review list
              const MyUserReviewCard(name: 'Some one',),
              const SizedBox(height: 20),
              const MyUserReviewCard(name: 'John doe',),

            ],
          ),
        ),

      ),
    );
  }
}

