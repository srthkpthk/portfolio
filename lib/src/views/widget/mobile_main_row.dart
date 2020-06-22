import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/util/Constants.dart';
import 'package:portfolio/src/views/widget/profile_picture_widget.dart';

class MobileMainRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          txt(aboutInfo, size: 20),
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
          buildCard(skillsList),
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
          buildCard(educationList),
          SizedBox(
            height: 30,
          ),
          txt('Projects.', size: 40),
          buildCard(projects),
          SizedBox(
            height: 30,
          ),

        ],
      ),
    );
  }
}
