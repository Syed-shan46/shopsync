import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/features/Personalization/screens/settings/settings.dart';
import 'package:shop_sync/features/shop/screens/home/home.dart';
import 'package:shop_sync/features/shop/screens/store/store.dart';
import 'package:shop_sync/features/shop/screens/wishlist/wish_list.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return  Scaffold(
      bottomNavigationBar: Obx(()
      =>  Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
          child: GNav(
            //color: Colors.white.withOpacity(0.8),
            activeColor: Colors.white.withOpacity(0.8),
            tabBackgroundGradient: LinearGradient(
                colors: [Colors.blueAccent.withOpacity(0.5),
              Colors.blue.withOpacity(0.9)]),
            padding: const EdgeInsets.all(8),
            selectedIndex: controller.selectedIndex.value,
            onTabChange: (index) => controller.selectedIndex.value = index,
            gap: 8,
            tabs: const [
              GButton(icon: Iconsax.home5,text: 'Home',),
              GButton(icon: Iconsax.shop,text: 'Store',),
              GButton(icon: CupertinoIcons.heart,text: 'Wish-list',),
              GButton(icon: CupertinoIcons.gear_alt_fill,text: 'Settings',),
            ],
          ),
        ),
      ),

      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
