import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_sync/common/widgets/text_forms/my_text_form_widget.dart';
import 'package:shop_sync/features/authentication/signup/sign_up.dart';
import 'package:shop_sync/features/shop/screens/home/home.dart';
import 'package:shop_sync/navigation_menu.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

import '../../signup/widgets/helperFunctions.dart';

class MyFormFields extends StatefulWidget {
  const MyFormFields({
    super.key,
  });

  @override
  State<MyFormFields> createState() => _MyFormFieldsState();
}

class _MyFormFieldsState extends State<MyFormFields> {
  /// Text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// Login method
  void login() async {
    /// Show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    /// Try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      /// Pop loading circle
      if (context.mounted) Navigator.pop(context);
      displayMessageToUser('Login Sucessfull', context);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => NavigationMenu()));
    }

    /// Display any errros
    on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessageToUser(e.code, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email TextField
          MyTextField(
              controller: emailController,
              labelText: 'Email',
              icon: Iconsax.direct_right),
          SizedBox(height: MySizes.spaceBtwItems),

          /// Password TextField
          MyTextField(
              controller: passwordController,
              labelText: 'Password',
              icon: Iconsax.password_check),
          SizedBox(height: MySizes.spaceBtwItems / 2),

          /// Remember me & Forgot Password
          const RememberMePassword(),
          const SizedBox(height: MySizes.spaceBtwSections),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.withOpacity(0.8),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () => Get.to(const HomeScreen()),
              child: const Text(

                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwItems),

          /// Create account  Button
          CreateAccount(),
        ],
      ),
    );
  }
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.blue),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        onPressed: () => Get.to(() => SignUpScreen()),
        child: Text(
          'Create Account',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primaryFixed,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class RememberMePassword extends StatelessWidget {
  const RememberMePassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Remember me
        Row(
          children: [
            Checkbox(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.blue,
                checkColor: Colors.white),
            const Text('Remember me?')
          ],
        ),

        /// Forgot password
        TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryFixed
                      .withOpacity(0.7)),
            )),
      ],
    );
  }
}
