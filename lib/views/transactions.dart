import 'package:flutter/material.dart';
import 'package:g_pay_app/utils/payment_history.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 0.01 * h,
            ),
            Container(
              height: 0.08 * h,
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Search transactions",
                    style: TextStyle(
                      color: Colors.grey.shade50,
                      fontSize: textScaler.scale(14),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.35,
                  ),
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            paymentHistory(
              h: h,
              w: w,
              textScaler: textScaler,
              name: "Jai",
              payment: 1400,
              date: "12 Jun",
            ),
            SizedBox(
              height: h * 0.02,
            ),
            paymentHistory(
              h: h,
              w: w,
              textScaler: textScaler,
              name: "Misha",
              payment: 210,
              date: "18 May",
            ),
            SizedBox(
              height: h * 0.02,
            ),
            paymentHistory(
              h: h,
              w: w,
              textScaler: textScaler,
              name: "Yash",
              payment: 100,
              date: "5 Apr",
            ),
          ],
        ),
      ),
    );
  }
}
