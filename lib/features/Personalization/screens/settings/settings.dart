import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/appbar/appbar.dart';
import 'package:shop_sync/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shop_sync/common/widgets/layouts/settings_menu_tile.dart';
import 'package:shop_sync/common/widgets/layouts/user_profile_tile.dart';
import 'package:shop_sync/common/widgets/texts/my_section_heading.dart';
import 'package:shop_sync/features/Personalization/screens/profile/profile.dart';
import 'package:shop_sync/features/authentication/login/login.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void Logout(){
    FirebaseAuth.instance.signOut();
    Get.to(() => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              height: 200,
              child: Column(
                children: [
                  /// Appbar
                  MyAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.white))),

                  /// User profile card
                  UserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: MySizes.spaceBtwItems)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Account settings
                  const MySectionHeading(
                      title: 'Account Settings', showActionbutton: false),
                  const SizedBox(height: MySizes.spaceBtwItems),

                  /// Menu tiles
                  const MySettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My '
                          'Address',
                      subTitle: 'Set shopping delivery address'),
                  const MySettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove Products and  move to checkout'),
                  MySettingsMenuTile(
                      onTap: () {},
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders'),
                  const MySettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const MySettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all discounted Coupons'),
                  const MySettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'),
                  const MySettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  /// app settings
                  const SizedBox(height: MySizes.spaceBtwSections),
                  const MySectionHeading(
                    title: 'App Settings',
                    showActionbutton: false,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  const MySettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load data',
                      subTitle: 'Upload data to your cloud firebase'),
                  MySettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Location',
                      subTitle: 'Search result in safe for all ages',
                      trailing: Switch(
                          activeTrackColor: Colors.blue.withOpacity(0.8),
                          activeColor: Colors.white,
                          value: true,
                          onChanged: (value) {})),
                  MySettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  MySettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set Recommendation based on location',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  /// logout button
                  const SizedBox(height: MySizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: Logout,
                      style: OutlinedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      child: Text('Logout',
                          style: TextStyle(color: Colors.red.withOpacity(0.8))),
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
