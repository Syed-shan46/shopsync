import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/texts/my_section_heading.dart';
import 'package:shop_sync/features/shop/screens/home/widgets/banner_widget.dart';

import 'package:shop_sync/utils/constants/sizes.dart';

import '../../../../common/widgets/product_cards/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.blue.withOpacity(0.8),
            size: 20,
          ),
        ),
        title:  Text('Categories',style: TextStyle(color: Colors.blue
            .withOpacity(0.8)),),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              MySectionHeading(title: 'Sports Shirts'),
              SizedBox(height: MySizes.spaceBtwItems),
              MyHorizontalBuilder(),
              SizedBox(height: MySizes.spaceBtwItems),

              MySectionHeading(title: 'Sports Equipments'),
              SizedBox(height: MySizes.spaceBtwItems),
              MyHorizontalBuilder(),
              SizedBox(height: MySizes.spaceBtwItems),

              MySectionHeading(title: 'Sports Equipments'),
              SizedBox(height: MySizes.spaceBtwItems),
              MyHorizontalBuilder(),
              SizedBox(height: MySizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHorizontalBuilder extends StatelessWidget {
  const MyHorizontalBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) =>
              const SizedBox(width: MySizes.spaceBtwItems),
          itemBuilder: (context, index) => const MyProductCardHorizontal()),
    );
  }
}
