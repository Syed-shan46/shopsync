import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/icons/circular_icon.dart';
import 'package:shop_sync/features/shop/screens/home/home.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/product_card.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,),
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.blue.withOpacity(0.8)),
        ),
        actions: [
          MyCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MySizes.spaceBtwSections),
            MyProductCard(),
          ],
        ),
      ),
    );
  }
}
