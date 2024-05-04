import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  const ResponsiveLayoutScreen(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 767) {
          return mobileScreenLayout;
        }
        return webScreenLayout;
      },
    );
  }
}
