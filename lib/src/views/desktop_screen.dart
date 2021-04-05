import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/src/util/Constants.dart';
import 'package:portfolio/src/views/widget/a_mobile_app_developer_widget.dart';
import 'package:portfolio/src/views/widget/made_with_flutter_widget.dart';
import 'package:portfolio/src/views/widget/profile_picture_widget.dart';
import 'package:portfolio/src/views/widget/social_bar_widget.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [MadeWithFlutterWidget(), SocialBarWidget()],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RotatedBox(
                      quarterTurns: -1, child: AMobileAppDeveloperWidget()),
                  ProfilePictureWidget(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [txt(hiIm, size: 20), txt(name, size: 100)],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              txt('About.', size: 100),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: txt(aboutInfo, size: 30),
              ),
              SizedBox(
                height: 100,
              ),
              txt('Skills.', size: 100),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    dot(15),
                    SizedBox(
                      width: 25,
                    ),
                    txt(someSkillsInclude, size: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: buildCard(skillsList),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    dot(15),
                    SizedBox(
                      width: 25,
                    ),
                    txt(educationIHave, size: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: buildCard(educationList),
              ),
              SizedBox(
                height: 100,
              ),
              txt('Projects.', size: 100),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: buildCard(projects),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: txt('Have a Project Let\'s talk ↑', size: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: txt("This is a sample website made in flutter on 22nd June 2020"),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
