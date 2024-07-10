import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget Navigate_to({
  required double h,
  required TextScaler textScaler,
  required IconData icon,
  required String text,
}) {
  return Container(
    height: 0.1 * h,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(
            icon,
            color: Colors.white,
            size: 32,
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            text,
            style: TextStyle(
              fontSize: textScaler.scale(16),
              color: Colors.white,
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    ),
  );
}
