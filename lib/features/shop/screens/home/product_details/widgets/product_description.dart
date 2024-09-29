import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description',style: Theme.of(context).textTheme.headlineSmall!
            .copyWith
          (fontWeight: FontWeight.w500,fontSize: 18),),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        const ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show Less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}