import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return MyCircularContainer(
      showBorder: true,
      //backgroundColor: dark ? MyColor.dark : MyColor.white,
      padding: const EdgeInsets.only(top: MySizes.sm,bottom: MySizes.sm,right: MySizes.sm,left: MySizes.md),
      child:  Row(
        children: [
          /// textField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code ? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// button
          SizedBox(
            width: 80,
            child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue.withOpacity(0.8),
                side: BorderSide(color: Colors.blue.withOpacity(0.1))
            ),
              child: const Text('Apply'),
            ),
          )


        ],
      ),
    );
  }
}
