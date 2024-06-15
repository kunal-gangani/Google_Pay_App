import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget iconText(
    {required IconData icon, required String text1, required String text2}) {
  return Column(
    children: [
      Icon(
        icon,
        size: 40,
        color: Colors.lightBlue,
      ),
      Text(
        text1,
        style: const TextStyle(color: Colors.white),
      ),
      Text(
        text2,
        style: const TextStyle(color: Colors.white),
      )
    ],
  );
}
