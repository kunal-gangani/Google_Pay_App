import 'package:flutter/material.dart';
import 'package:g_pay_app/globals/routes.dart';

Widget peoplesInfo({
  required double w,
  required String text,
  required String image,
  required BuildContext context,
  required Map e,
}) {
  List<String> nameParts = text.split(' ');
  String firstName = nameParts.first;
  String lastName = nameParts.length > 1 ? nameParts.last : '';
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Routes.detailPage, arguments: e);
    },
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: w * 0.070,
            backgroundImage: NetworkImage(image),
          ),
          Text(
            firstName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
