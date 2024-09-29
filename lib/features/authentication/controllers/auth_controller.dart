import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_sync/features/authentication/login/login.dart';
import 'package:shop_sync/features/shop/screens/home/home.dart';

class AuthController extends StatelessWidget {
  const AuthController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          /// User is logged in
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          /// User is not logged in
          else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
