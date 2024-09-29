import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/icons/circular_icon.dart';
import 'package:shop_sync/utils/constants/sizes.dart';
import 'package:shop_sync/utils/helpers/helper_functions.dart';


class MyAddRemoveCartButton extends StatelessWidget {
  const MyAddRemoveCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const SizedBox(width: 70),
        /// add and remove icon
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: MySizes.md,
              color: MyHelperFunctions.isDarkMode(context) ? Colors.white :
              Colors.black,
             // backGroundColor: MyHelperFunctions.isDarkMode(context) ?
   // MyColor.darkGrey : MyColor.light,
            ),

            const SizedBox(width: MySizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: MySizes.spaceBtwItems,),

            const MyCircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: MySizes.md,
              color: Colors.white,
              backGroundColor: Colors.blue,
            ),
          ],
        )
      ],
    );
  }
}
