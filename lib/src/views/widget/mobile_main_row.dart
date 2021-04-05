import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/src/util/Constants.dart';
import 'package:portfolio/src/views/widget/profile_picture_widget.dart';

class MobileMainRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          Align(alignment: Alignment.center, child: ProfilePictureWidget()),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [txt(hiIm), txt(name, size: 60)],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          txt('About.', size: 40),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: txt(aboutInfo, size: 20),
          ),
          SizedBox(
            height: 30,
          ),
          txt('Skills.', size: 40),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              dot(5),
              SizedBox(
                width: 5,
              ),
              txt(someSkillsInclude, size: 20),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: buildCard(skillsList),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              dot(5),
              SizedBox(
                width: 5,
              ),
              txt(educationIHave, size: 20),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: buildCard(educationList)),
          SizedBox(
            height: 30,
          ),
          txt('Projects.', size: 40),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: buildCard(projects)),
          SizedBox(
            height: 30,
          ),
          txt('Have a Project Let\'s Talk 🠒', size: 25),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
           child: txt("This is a sample website made in flutter on 22nd June 2020"),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
