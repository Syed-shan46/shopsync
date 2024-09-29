import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/appbar/appbar.dart';
import 'package:shop_sync/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:shop_sync/utils/constants/image_strings.dart';
import 'package:shop_sync/utils/constants/sizes.dart';


class MyProductDetailImage extends StatelessWidget {
  const MyProductDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCurvedWidget(
      child: Container(
        color: Colors.grey.withOpacity(0.2),
        child: Stack(
          children: [
            ///Header
            MyAppBar(
              showBackArrow: true,
              actions: [
                Container(
                  width: 40,height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      shape: BoxShape.circle),
                  child: const Icon(CupertinoIcons.suit_heart,
                      color: Colors.red),
                )
              ],
            ),

            /// Main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(MyImages.productImage19)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
