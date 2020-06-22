import 'package:flutter/material.dart';
import 'package:portfolio/src/util/responsive_widget.dart';

class ProfilePictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('image/dp.jpg'),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          )),
    );
  }
}
