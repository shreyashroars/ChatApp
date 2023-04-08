// import 'package:chat_app/screens/signup.dart';
// import 'package:chat_app/services/user.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class Authorisation {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   Usser? _userfromFirebaseUser(User? user) {
//     return user != null ? Usser(user.uid) : null;
//   }

//   Future signUpwithEmailandPassword(
//       String username, String email, String Password) async {
//     try {
//       final credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailcontroller.text,
//         password: passwordcontroller.text,
//       );
//       User? firebase_user = credential.user;
//       return _userfromFirebaseUser(firebase_user);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future signInwithEmailandPassword(String email, String Password) async {
//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: Password);
//       User? firebase_user = credential.user;
//       return _userfromFirebaseUser(firebase_user);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//   }

//   Future resetpassword(String email) async {
//     try {
//       return await _auth.sendPasswordResetEmail(email: email);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future signOut() async {
//     return await _auth.signOut();
//   }
// }
