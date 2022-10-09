import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

final TextEditingController emailcontrollersignIn = new TextEditingController();

final TextEditingController passwordcontrollersignIn =
    new TextEditingController();

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: emailcontrollersignIn,
                  decoration: textInputdec('email')),
              TextField(
                  controller: passwordcontrollersignIn,
                  decoration: textInputdec('password')),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Text('Forgot Password?'),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlue),
                child: Text(
                  'SignIn',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 239, 181, 8)),
                child: Text(
                  'SignIn with Google!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Don't have an account?",
                    style: mediumstyling(),
                  ),
                  Text('Register now!',
                      style: TextStyle(
                          fontSize: 17, decoration: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 100 / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
