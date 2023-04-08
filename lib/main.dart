import 'package:chat_app/colors.dart';
import 'package:chat_app/features/landing/landing_screen.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/responsive/responsive.dart';
import 'package:chat_app/router.dart';
import 'package:chat_app/screens/mobilescreenlayout.dart';
import 'package:chat_app/screens/signin.dart';
import 'package:chat_app/screens/signup.dart';
import 'package:chat_app/screens/webscreenlayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const LandingScreen());
  }
}
