import 'package:flutter/material.dart';
import 'package:portfolio/src/util/responsive_widget.dart';
import 'package:portfolio/src/views/desktop_screen.dart';
import 'package:portfolio/src/views/mobile_screen.dart';

class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: DesktopScreen(), smallScreen: MobileScreen());
  }
}
