import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/choice_chips/chips.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyProductSize extends StatelessWidget {
  const MyProductSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Size',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Wrap(
          spacing: 8,
          children: [
            MyChoiceChip(
              text: 'EU 34',
              selected: true,
              onSelected: (value) {},
            ),
            MyChoiceChip(
              text: 'EU 28',
              selected: false,
              onSelected: (value) {},
            ),
            MyChoiceChip(
              text: 'EU 36',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        )
      ],
    );
  }
}
