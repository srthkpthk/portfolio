import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MadeWithFlutterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey.shade800),
      child: Text(
        'Made with Flutter  ♥',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
