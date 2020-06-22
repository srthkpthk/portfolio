import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    @required this.largeScreen,
    @required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
