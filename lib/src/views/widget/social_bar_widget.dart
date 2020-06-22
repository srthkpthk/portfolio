import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _buildSocialButton(
              "https://www.linkedin.com/in/srthk-pthk-7a673a170/",
              "LINKEDIN",
              Color.fromRGBO(72, 117, 180, 1)),
          _buildSocialButton("https://www.facebook.com/srthkpthk", "FACEBOOK",
              Color.fromRGBO(59, 89, 152, 1)),
          _buildSocialButton("https://github.com/srthkpthk", "GITHUB",
              Color.fromRGBO(33, 31, 31, 1)),
          _buildSocialButton("https://www.instagram.com/mr_insomaniac/",
              "INSTAGRAM", Color.fromRGBO(193, 53, 132, 1)),
          _buildSocialButton("https://twitter.com/SrthkPthk", "TWITTER",
              Color.fromRGBO(0, 172, 237, 1)),
          _buildSocialButton("https://mail.google.com/mail/?view=cm&fs=1&to=srthk.pthk4@gmail.com", "GMAIL",
              Color.fromRGBO(178, 49, 33, 1))
        ],
      ),
    );
  }
}

Widget _buildSocialButton(String url, String text, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: FlatButton(
        hoverColor: color,
        color: Colors.grey.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        onPressed: () {
          html.window.open(url, text);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        )),
  );
}
