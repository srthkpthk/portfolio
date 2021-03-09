import 'package:flutter/material.dart';

final String name = 'Sarthak';
final String educationIHave = 'Education Includes';
final String aboutInfo =
    'I\'m a Focused student having excellent technical and communication skills, having keen interest in Computer industry. Proficient at designing and writing code in various languages, feature development and implementation. Specialize in thinking out of the box and unique solutions to difficult engineering problems.';
final String hiIm = 'Hi I\'m';
final String someSkillsInclude = 'Some Skills I have include';
final List<String> skillsList = ['Java', 'Kotlin', 'Dart', 'Flutter', 'Photoshop'];
final List<String> educationList = [
  '10th \n\nBlue Bird Sen. Sec. School \nAligarh\n2015',
  '12th \n\nBlue Bird Sen. Sec. School \nAligarh\n2017',
  'B.Tech \n\nG.L.Bajaj Group of Institutions   \nMathura\n2021',
];
final List<String> projects = [
  "1.\t MoviesX \n\n **Info to be Updated**",
  "2.\t CoronaTiem (Flutter) \n\nCoronaTiem is an App for Tracking Corona Virus Cases in India and According to States.The data is provided by https://www.covid19india.org\n\n• UsesBloc\n• UsesDio",
  "3.\t CoronaTiem (Android)  \n\nCoronaTiem is an App for Tracking Corona Virus Cases in India.The data is provided by https://www.covid19india.org\n• Offline Caching of Data using Room\n• Dependency Injection with Kodein-DI\n• Use of MVVM Pattern\n• Use of Groupie for recycler View\n• Use of DataBinding (with Groupie)\n• Dark Mode Support",
  "4. \t Weather App\n\nShows Current Weather and Forecast for your Current Location.\n• Only for Android\n• Uses Bloc",
  "5. \t SplitWise SDK for Dart\n\nA SDK based on Splitwise API",
  "6. \t Sms Forwarder\n A simple App to forward all incoming sms to a Phone Number \n• Does not forward Class 0 messages",
      "//TODO adding more..."
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
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey.shade900),
    child: txt(skill, size: 20),
  );
}
