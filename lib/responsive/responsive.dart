import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webscreenlayout;
  final Widget mobilescreenlayout;
  const ResponsiveLayout(
      {required this.mobilescreenlayout,
      required this.webscreenlayout,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrainsts) {
        if (constrainsts.maxWidth < 900)
          return mobilescreenlayout;
        else
          return webscreenlayout;
      },
    );
  }
}
