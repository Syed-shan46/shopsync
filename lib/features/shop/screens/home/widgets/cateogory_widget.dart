import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_sync/features/shop/models/home/category_model.dart';
import 'package:shop_sync/features/shop/screens/sub_category/sub_categories.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyCategoriesBox extends StatefulWidget {
  const MyCategoriesBox({super.key});

  @override
  State<MyCategoriesBox> createState() => _MyCategoriesBoxState();
}

class _MyCategoriesBoxState extends State<MyCategoriesBox> {
  List<CategoryModel> categories = [];

  void _getInfo() {
    categories = CategoryModel.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _getInfo();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Category Header
        // const CategoryHeader(),
        const SizedBox(height: 15),

        /// Category image & text
        Column(
          children: [
            CategoryImgText(categories: categories),
          ],
        ),
      ],
    );
  }
}

class CategoryImgText extends StatelessWidget {
  const CategoryImgText({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          padding: const EdgeInsets.only(left: 20,right: 20),
          /// Separator builder
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          /// Item builder
          itemBuilder: (context, index) {
          return Column(
            children: [
              /// image container
              GestureDetector(
                onTap: () => Get.to(() => const SubCategoriesScreen()),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor,
                      shape: BoxShape.circle),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(categories[index].iconPath,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwItems / 2),

              /// Category text
              Text(
                categories[index].name,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          );
          },
          ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        textAlign: TextAlign.start,
        'Categories',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
