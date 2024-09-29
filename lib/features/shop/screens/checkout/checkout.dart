import 'package:flutter/material.dart';
import 'package:shop_sync/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [

              /// Items in cart
              MyCartItems(showAddRemoveButtons: false,)
            ],
          ),
        ),
      ),
    );
  }
}
