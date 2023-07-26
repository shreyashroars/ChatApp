import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../widgets/custom_button.dart';
import '../auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routename);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height / 12),
            Image.asset(
              'assets/bg.png',
              height: 200,
              width: 200,
              color: tabColor,
            ),
            SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            //  const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () {
                    return navigateToLoginScreen(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
