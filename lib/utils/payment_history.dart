import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget paymentHistory({
  required double h,
  required double w,
  required TextScaler textScaler,
  required String name,
  required int payment,
  required String date,
}) {
  return Container(
    height: 0.2 * h,
    width: 0.65 * w,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.grey.shade600,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment to $name",
          style: TextStyle(
            color: Colors.white,
            fontSize: textScaler.scale(16),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0.01 * h,
        ),
        Text(
          "₹${payment.toString()}",
          style: TextStyle(
            color: Colors.white,
            fontSize: textScaler.scale(25),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0.02 * h,
        ),
        Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.lightGreenAccent,
              size: 30,
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Text(
              "Paid •",
              style: TextStyle(
                fontSize: textScaler.scale(14),
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 0.01 * w,
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: textScaler.scale(14),
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 0.17 * w,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 22,
            )
          ],
        ),
      ],
    ),
  );
}
