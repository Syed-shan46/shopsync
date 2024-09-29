import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/features/shop/screens/product_review/rating_bar_indicator.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyUserReviewCard extends StatelessWidget {

  const MyUserReviewCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               const CircleAvatar(backgroundImage: AssetImage(MyImages.user)),
                const SizedBox(width: MySizes.spaceBtwItems),
                Text(name, style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),

        const SizedBox(height: MySizes.spaceBtwItems),

        /// user review
        Row(
          children: [
           const MyRatingBarIndicator(rating: 4),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text('02 Nov 2024', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),

        /// user description
        const SizedBox(height: MySizes.spaceBtwItems),
         const ReadMoreText(" is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using",
          trimLines: 2,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          trimMode: TrimMode.Line,

           moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
               color: Colors.blue),
           lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
               color: Colors.blue),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),


        /// company review
        MyCircularContainer(

          child:  Padding(padding: const EdgeInsets.all(MySizes.md     ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Text('Shop Sync', style: Theme.of(context).textTheme
                        .titleMedium),
                    Text(' 02 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),

                  ],
                ),
                const ReadMoreText(" is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using",
                  trimLines: 2,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  trimMode: TrimMode.Line,

                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight
                      .bold,color: Colors.blue),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight
                      .bold,color: Colors.blue),
                ),
              ],
            ),
          ),

        )
      ],

    );
  }
}
