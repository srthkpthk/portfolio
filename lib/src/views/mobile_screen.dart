import 'package:flutter/material.dart';
import 'package:portfolio/src/views/widget/a_mobile_app_developer_widget.dart';
import 'package:portfolio/src/views/widget/made_with_flutter_widget.dart';
import 'package:portfolio/src/views/widget/mobile_main_row.dart';
import 'package:portfolio/src/views/widget/social_bar_widget.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 4),
            height: mediaQuery.height,
            width: mediaQuery.width / 11,
            child: RotatedBox(
              quarterTurns: -1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MadeWithFlutterWidget(),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: AMobileAppDeveloperWidget(),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: mediaQuery.height,
              width: mediaQuery.width * (4 / 5),
              child: MobileMainRow()),
          Container(
            width: mediaQuery.width / 100,
          ),
          Container(
            width: mediaQuery.width / 11,
            color: Colors.grey.shade900,
            child: RotatedBox(
              quarterTurns: 1,
              child: SocialBarWidget(),
            ),
          )
        ],
      ),
    );
  }
}
