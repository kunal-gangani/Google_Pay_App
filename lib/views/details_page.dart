import 'package:flutter/material.dart';
import 'package:g_pay_app/utils/payment_history.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Map<String, dynamic> user =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey.shade800,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                user['image'],
              ),
            ),
            SizedBox(
              width: 0.03 * w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user['name'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(15),
                  ),
                ),
                Text(
                  "+91 ${user['phone'].toString()}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(13),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: w * 0.05,
          ),
          const Icon(
            Icons.list_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 0.01 * w,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            paymentHistory(
              h: h,
              w: w,
              textScaler: textScaler,
              name: "You",
              payment: 300,
              date: "12 Jun",
            ),
            Transform.translate(
              offset: const Offset(57, 15),
              child: const Text(
                "17 Jun, 11:30 pm",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 0.05 * h,
            ),
            Transform.translate(
              offset: const Offset(110, -10),
              child: paymentHistory(
                h: h,
                w: w,
                textScaler: textScaler,
                name: "Kunal",
                payment: 185,
                date: "17 Jun",
              ),
            ),
            SizedBox(
              height: 0.01 * h,
            ),
            Transform.translate(
              offset: const Offset(110, -10),
              child: paymentHistory(
                h: h,
                w: w,
                textScaler: textScaler,
                name: "Kunal",
                payment: 1500,
                date: "17 Jun",
              ),
            ),
            Transform.translate(
              offset: const Offset(57, 0),
              child: const Text(
                "21 Jun, 11:30 pm",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
