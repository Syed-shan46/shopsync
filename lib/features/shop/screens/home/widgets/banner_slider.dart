import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:shop_sync/features/shop/controllers/home_controller.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/banner_widget.dart';

class MyBannerSlider extends StatelessWidget {
  const MyBannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        /// Carousel indicator
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              child: MyBannerWidget(
                imageUrl: 'assets/images/banners/promo-banner-1.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              child: MyBannerWidget(
                imageUrl: 'assets/images/banners/banner_3.jpg',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              child: MyBannerWidget(
                imageUrl: 'assets/images/banners/banner_5.jpg',
              ),
            ),

          ],
        ),


      ],
    );
  }
}
