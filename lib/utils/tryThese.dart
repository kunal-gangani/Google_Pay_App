import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget TryTheseWidgets(
    {required double w,
    required IconData icon,
    required String text1,
    required String text2}) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Column(
      children: [
        CircleAvatar(
          radius: w * 0.070,
          backgroundColor: Colors.blue,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Text(
          text1,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
