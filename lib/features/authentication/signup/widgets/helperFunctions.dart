import 'package:flutter/material.dart';

void displayMessageToUser(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration:
          const Duration(seconds: 2), // Adjust the duration as per your needs
    ),
  );
}
