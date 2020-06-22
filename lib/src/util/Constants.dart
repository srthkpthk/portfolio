import 'package:flutter/material.dart';
import 'dart:html' as html;
final String name = 'Srthk Pthk';
final String educationIHave = 'Education Includes';
final String aboutInfo =
    'I\'m a Focused student having excellent technical and communication skills, having keen interest in Computer industry. Proficient at designing and writing code in various languages, feature development and implementation. Specialize in thinking out of the box and unique solutions to difficult engineering problems.';
final String hiIm = 'Hi I\'m';
final String someSkillsInclude = 'Some Skills I have include';
final List<String> skillsList = [
  'Java',
  'Kotlin',
  'Dart',
  'Flutter',
  'Photoshop'
];
final List<String> educationList = [
  '10th \n\nBlue Bird Sen. Sec. School \nAligarh\n2015',
  '12th \n\nBlue Bird Sen. Sec. School \nAligarh\n2017',
  'B.Tech \n\nG.L.Bajaj Group of Institutions   \nMathura\n2021',
];
final List<String> projects = [
  'Movies X \n\n A movie catalog app made using Flutter backed by TMDB API ',
  'CoronaTiem  \n\n A CoronaVirus tracking app made using Flutter backed by www.covid19india.com\'s API ',
  """CoronaTiem \n\nCoronaTiem is an App for Tracking Corona Virus Cases in India.The data is provided by https://www.covid19india.org\n
• Offline Caching of Data using Room
• Dependency Injection with Kodein-DI
• Use of MVVM Pattern
• Use of Groupie for recycler View
• Use of DataBinding (with Groupie)
• Dark Mode Support""",
      'Weather App  \n\n Shows Current Weather and Forecast for your Current Location.',
  '...etc',
];

Widget txt(String text, {double size}) => Text(
      text,
      style: TextStyle(fontSize: size),
    );

Widget dot(double size) => Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    );

Widget buildCard(List<String> skillsList) {
  final List<Widget> widgets = skillsList
      .map((skill) => Padding(
            padding: EdgeInsets.all(8),
            child: _buildCard(skill),
          ))
      .toList();

  return Wrap(
    children: widgets,
  );
}

_buildCard(String skill) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.grey.shade900),
    child: txt(skill, size: 20),
  );
}
