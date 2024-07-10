import 'package:flutter/material.dart';

Widget offersAndRewardsSection(
    {required double w, required String image, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        CircleAvatar(
          radius: w * 0.070,
          backgroundImage: NetworkImage(image),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
