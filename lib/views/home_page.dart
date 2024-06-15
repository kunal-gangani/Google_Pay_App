import 'package:flutter/material.dart';
import 'package:g_pay_app/utils/iconText.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //starting black container
            Container(
              width: w,
              height: h * 0.35,
              color: Colors.black,
              child: Column(
                children: [
                  //for upper space
                  SizedBox(
                    height: h * 0.04,
                  ),
                  //search bar and user photo
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Container(
                        height: h * 0.07,
                        width: w * 0.78,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: w * 0.02,
                            ),
                            const Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "Pay friends and merchant",
                              style: TextStyle(
                                fontSize: textScaler.scale(15),
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      CircleAvatar(
                        radius: w * 0.06,
                        backgroundImage: const NetworkImage(
                            "https://lh3.googleusercontent.com/a/ACg8ocKrUXJGuziXXg03q8RU4YZCGsavQbRyTVGWGDpjSSFLHjNz0rE=s360-c-no"),
                      )
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(-60, 55),
                    child: Text(
                      "Let Google set up bills",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textScaler.scale(18),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-35, 55),
                    child: Text(
                      "One time SMS permission required",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textScaler.scale(14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Transform.translate(
                    offset: const Offset(40, 55),
                    child: Row(
                      children: [
                        const Text(
                          "Get started",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        SizedBox(
                          width: w * 0.01,
                        ),
                        CircleAvatar(
                          radius: w * 0.045,
                          backgroundColor: Colors.lightBlue,
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Icons and text Row1
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconText(
                      icon: Icons.qr_code_scanner,
                      text1: "Scan any",
                      text2: "QR code"),
                  iconText(icon: Icons.phone, text1: "Pay", text2: "contacts"),
                  iconText(
                      icon: Icons.send_to_mobile_rounded,
                      text1: "Pay phone",
                      text2: "numnber"),
                  iconText(
                      icon: Icons.home_filled,
                      text1: "Bank",
                      text2: "Transfer"),
                ],
              ),
            ),
            //Icons and text Row2
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconText(
                      icon: Icons.paypal,
                      text1: "Pay UPI id",
                      text2: "or number"),
                  iconText(
                      icon: Icons.supervised_user_circle,
                      text1: "Self",
                      text2: "transfer"),
                  iconText(
                      icon: Icons.payments_sharp, text1: "Pay", text2: "Bills"),
                  iconText(
                      icon: Icons.phone_android_outlined,
                      text1: "Mobile",
                      text2: "Recharge"),
                ],
              ),
            ),
            //Activate UPI ID and UPI ID row
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    height: h * 0.06,
                    width: w * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " Activate UPI Lite",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: textScaler.scale(13),
                          ),
                        ),
                        const Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Container(
                    height: h * 0.06,
                    width: w * 0.5,
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "UPI ID : thekunalgangani@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textScaler.scale(13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "People",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
