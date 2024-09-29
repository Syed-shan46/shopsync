import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/texts/my_brand_card.dart';
import 'package:shop_sync/utils/constants/enums.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyBrandTitleWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifiedIcon(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.textColor,
      this.iconColor = Colors.blue,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small});

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: MySizes.sm),
        Icon(Iconsax.verify5, color: iconColor, size: MySizes.iconXs),
      ],
    );
  }
}
