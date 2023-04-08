import 'package:chat_app/common/widget/error.dart';
import 'package:chat_app/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routename:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
              body: ErrorScreen(error: 'This page does not exist')));
  }
}
