import 'package:flutter/material.dart';

class ProductModel {
  String name;
  double price;
  String imageUrl;
  Color boxColor;

  ProductModel( {
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.boxColor,
});

  static List<ProductModel> getProducts() {
    List<ProductModel> products = [];
    
    products.add(ProductModel(name: 'Nike Green Shoe',
          price: 120, imageUrl: 'assets/images/products/NikeBasketballShoeGreenBlack.png',
          boxColor: Colors.grey.withOpacity(0.2)));

    products.add(ProductModel(name: 'Nike Jordan Shoe',
        price: 120, imageUrl: 'assets/images/products/NikeAirJordonSingleBlue.png',
        boxColor: Colors.grey.withOpacity(0.2)));

    products.add(ProductModel(name: 'Jordan Basketball shoe',
        price: 120, imageUrl: 'assets/images/products/leather_jacket_2.png',
        boxColor: Colors.grey.withOpacity(0.2)));

    products.add(ProductModel(name: 'Nike Slipper',
        price: 120, imageUrl: 'assets/images/products/tracksuit_blue.png',
        boxColor: Colors.grey.withOpacity(0.2)));

    return products;

  }

}