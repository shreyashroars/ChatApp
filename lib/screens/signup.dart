// import 'package:chat_app/screens/signin.dart';
// import 'package:chat_app/services/auth.dart';
// import 'package:flutter/material.dart';

// import '../widgets/widget.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// bool _isloading = false;
// final formkey = GlobalKey<FormState>();
// final TextEditingController emailcontroller = new TextEditingController();
// final TextEditingController usernamecontroller = new TextEditingController();
// final TextEditingController passwordcontroller = new TextEditingController();

// class _SignUpState extends State<SignUp> {
//   signMeUp() {
//     if (formkey.currentState!.validate()) {
//       setState(() {
//         _isloading = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MainAppBar(context),
//       body: Container(
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Form(
//                   key: formkey,
//                   child: Column(
//                     children: [
//                       TextFormField(
//                           validator: (val) {
//                             if (val == null || val.isEmpty)
//                               return "Username can't be empty";
//                           },
//                           controller: usernamecontroller,
//                           decoration: textInputdec('username')),
//                       TextFormField(
//                           validator: (val) {
//                             return RegExp(
//                                         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                     .hasMatch(val!)
//                                 ? null
//                                 : "Enter correct email";
//                           },
//                           controller: emailcontroller,
//                           decoration: textInputdec('email')),
//                       TextFormField(
//                           obscureText: true,
//                           validator: (val) {
//                             return val!.length < 6
//                                 ? "Enter Password 6+ characters"
//                                 : null;
//                           },
//                           controller: passwordcontroller,
//                           decoration: textInputdec('password')),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Container(
//                   alignment: Alignment.centerRight,
//                   child: Container(
//                     child: Text('Forgot Password?'),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 InkWell(
//                   onTap: () => signMeUp(),
//                   child: Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.lightBlue),
//                     child:
//                         Text('SignUp', style: TextStyle(color: Colors.white)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Color.fromARGB(255, 239, 181, 8)),
//                   child: Text(
//                     'SignUp with Google!',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 16,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Already have an account?",
//                       style: mediumstyling(),
//                     ),
//                     InkWell(
//                       onTap: (() =>
//                           Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => Signin(),
//                           ))),
//                       child: Text(
//                         'Sign In now!',
//                         style: TextStyle(
//                             fontSize: 17, decoration: TextDecoration.underline),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 100 / 2,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
