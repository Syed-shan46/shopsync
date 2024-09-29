import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/layouts/MyGridLayout.dart';
import 'package:shop_sync/features/shop/models/home/category_model.dart';
import 'package:shop_sync/features/shop/models/home/product_model.dart';
import 'package:shop_sync/features/shop/screens/home/product_details/product_detail.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyProductCard extends StatefulWidget {
  const MyProductCard({
    super.key,
    this.itemCount = 4,
  });

  final int itemCount;

  @override
  State<MyProductCard> createState() => _MyProductCardState();
}

class _MyProductCardState extends State<MyProductCard> {
  List<ProductModel> products = [];
  List<CategoryModel> categories = [];
  late int itemCount;

  void _getInfo() {
    products = ProductModel.getProducts();
    categories = CategoryModel.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _getInfo();
    itemCount = widget.itemCount;
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return MyGridLayout(
      mainAxisExtent: 200,
      itemCount: itemCount,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: GestureDetector(
          onTap: () => Get.to(() => const MyProductDetail()),
          child: Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Align(
                            child: SizedBox(
                              height: 130,
                              child: Image(
                                  image: AssetImage(products[index].imageUrl),
                                  fit: BoxFit.contain,
                                  width: 130),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Favourite icon
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            shape: BoxShape.circle),
                        child: Icon(
                          CupertinoIcons.suit_heart,
                          color: Colors.red.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Brand name
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        products[index].name,
                        style: Theme.of(context).textTheme.labelLarge,
                        overflow: TextOverflow.ellipsis,
                      )),
                ),
                const Spacer(),

                /// Price
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        '\$135',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(fontWeightDelta: 700, fontSizeDelta: 3),
                      ),
                    ),

                    /// Cart icon
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.6),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(MySizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(MySizes.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        height: MySizes.iconLg * 1.2,
                        width: MySizes.iconLg * 1.2,
                        child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
