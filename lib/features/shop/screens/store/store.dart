import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/appbar/MyTabBar.dart';
import 'package:shop_sync/common/widgets/cart/cart_icon.dart';
import 'package:shop_sync/common/widgets/layouts/MyGridLayout.dart';
import 'package:shop_sync/common/widgets/searchBar/search_bar.dart';
import 'package:shop_sync/common/widgets/texts/my_section_heading.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/product_card.dart';
import 'package:shop_sync/features/shop/screens/store/widgets/brand_card.dart';
import 'package:shop_sync/features/shop/screens/store/widgets/category_tab.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// header
        appBar: AppBar(
          leading:  Icon(Icons.arrow_back_ios_new_outlined,size: 20,
            color: Colors.blue.withOpacity(0.8),),
          title: Text('Store',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 22, fontWeight: FontWeight.w500,color:
              Colors.blue.withOpacity(0.8))),
          actions: const [
            Padding(padding: EdgeInsets.only(right: 25), child: MyCartIcon())
          ],
        ),

        /// NestedScrollView
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 400,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      /// SearchBar
                      MySearchBar(showFilterIcon: false),
                      SizedBox(height: MySizes.spaceBtwItems),

                      /// Title
                      MySectionHeading(title: 'Featured Brands'),

                      /// Brand card
                      BrandCards(),
                    ],
                  ),
                ),

                /// Tab Bars
                bottom: const MyTabBar(
                  tabs: [
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Sports')),
                  ],
                ),
              )
            ];
          },

          /// TabBar views
          body: TabBarView(
            children: [
              const MyCategoryTab(),
              const MyCategoryTab(),
              const MyCategoryTab(),
              const MyCategoryTab(),

              /// Section heading
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: MySizes.defaultSpace),
                child:
                    MySectionHeading(title: 'You might like', onPressed: () {}),
              ),
              const SizedBox(height: MySizes.spaceBtwItems),

              /// Product card
              const MyProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BrandCards extends StatelessWidget {
  const BrandCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyGridLayout(
      itemCount: 4,
      crossSpacing: 20,
      mainSpacing: 20,
      mainAxisExtent: 80,
      itemBuilder: (_, index) {
        return GestureDetector(
            child: const MyBrandCard(
          showBorder: true,
        ));
      },
    );
  }
}
