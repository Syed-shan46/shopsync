import 'package:flutter/material.dart';
import 'package:shop_sync/utils/constants/enums.dart';

class MyBrandTitleText extends StatelessWidget {
  const MyBrandTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: brandTextSize == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium
            : brandTextSize == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge
                : brandTextSize == TextSizes.large
                    ? Theme.of(context).textTheme.bodyMedium
                    : Theme.of(context).textTheme.bodyMedium);
  }
}
