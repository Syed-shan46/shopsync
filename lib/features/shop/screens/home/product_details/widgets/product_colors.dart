import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/choice_chips/chips.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyColors extends StatelessWidget {
  const MyColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Color',style: Theme.of(context).textTheme.headlineSmall!.copyWith
          (fontWeight: FontWeight.w500,fontSize: 18),),
        const SizedBox(
          height: MySizes.spaceBtwItems / 2,
        ),
        Wrap(
          children: [
            MyChoiceChip(
              borderSide: true,
              text: 'Green',
              selected: false,
              onSelected: (value) {},
            ),
            MyChoiceChip(
              borderSide: true,
              text: 'Red',
              selected: true,
              onSelected: (value) {},
            ),
            MyChoiceChip(
              borderSide: true,
              text: 'Yellow',
              selected: false,
              onSelected: (value) {},
            ),
            MyChoiceChip(
              borderSide: true,
              text: 'Blue',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        )
      ],
    );
  }
}