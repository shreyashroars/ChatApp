import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

PreferredSizeWidget MainAppBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [
        LottieBuilder.asset(
          "assets/images/62878-chat-icons.json",
          height: 100,
          width: 70,
        )
      ],
    ),
  );
}

InputDecoration textInputdec(String hintText) {
  return InputDecoration(hintText: hintText);
}

TextStyle mediumstyling() {
  return TextStyle(fontSize: 17);
}
