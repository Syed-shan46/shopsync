import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_sync/common/widgets/cart/cart_icon.dart';
import 'package:shop_sync/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shop_sync/common/widgets/searchBar/search_bar.dart';
import 'package:shop_sync/features/shop/controllers/home_controller.dart';
import 'package:shop_sync/features/shop/screens/cart/cart.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/cateogory_widget.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/product_card.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Custom AppBar
            const MyHeader(),

            /// SearchBar
            const MySearchBar(),
            const SizedBox(height: 2),

            /// Categories
            const MyCategoriesBox(),

            /// Banners
            const MyBannerSlider(),

            /// Dot navigation
            MyDotNavigation(controller: controller),

            /// Popular Product heading
            const MyProductHeading(),
            const SizedBox(height: MySizes.spaceBtwItems),

            /// Product card
            const MyProductCard(),
            const SizedBox(height: MySizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

class MyDotNavigation extends StatelessWidget {
  const MyDotNavigation({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.carousalCurrentIndex.value == i
                        ? Colors.blue
                        : Colors.grey,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyProductHeading extends StatelessWidget {
  const MyProductHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Popular',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w700)),
          Text(
            'View all',
            style: TextStyle(color: Colors.blue.withOpacity(0.8)),
          )
        ],
      ),
    );
  }
}

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyPrimaryHeaderContainer(
      showContainer: false,
      height: 120,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, left: MySizes.defaultSpace),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    /// Left side welcome title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good day for shopping',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: Colors.white.withOpacity(0.9))),
                        Text('Syed-shan',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .apply(color: Colors.white)),
                      ],
                    ),

                    /// Cart icon
                    Positioned(
                      right: 30,
                      top: 10,
                      child: GestureDetector(
                          onTap: () => Get.to(() => const MyCartScreen()),
                          child: const MyCartIcon(color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
