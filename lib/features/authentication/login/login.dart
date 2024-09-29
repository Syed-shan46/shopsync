import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_sync/features/authentication/login/widgets/divider.dart';
import 'package:shop_sync/features/authentication/login/widgets/social_icons.dart';
import 'package:shop_sync/features/authentication/signup/widgets/helperFunctions.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

import 'widgets/my_auth_header.dart';
import 'widgets/my_form_fields.dart';
import 'widgets/my_welcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// top Container
            MyAuthHeader(title: 'Sign In'),

            /// Welcome Text, TextFields, Buttons & Social Icons
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  /// Welcome Text
                  MyWelcomeText(),
                  SizedBox(height: MySizes.spaceBtwSections),

                  /// FormFields
                  MyFormFields(),
                  SizedBox(height: MySizes.spaceBtwSections),

                  /// Divider
                  MyDivider(dividerText: 'OR CONTINUE WITH'),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// Social Icons
                  MySocialIcons(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
