import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/common/widgets/image/my_circular_image.dart';
import 'package:shop_sync/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:shop_sync/utils/constants/enums.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MyCircularContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(MySizes.sm),
        child: Row(
          children: [
            /// Circular icon
            MyCircularImage(
              imageColor: Colors.white,
                image: MyImages.nikeLogo,
                isNetworkImage: false,
                backgroundColor: Colors.blue.withOpacity(0.8),
                width: 50,
                height: 50),
            const SizedBox(width: 10),

            ///  Brand text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyBrandTitleWithVerifiedIcon(
                    title: 'Nike', brandTextSize: TextSizes.large),
                Text('256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium)
              ],
            )
          ],
        ),
      ),
    );
  }
}
