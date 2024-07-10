import 'package:flutter/material.dart';
import 'package:g_pay_app/globals/globals.dart';
import 'package:g_pay_app/utils/Navigate_to_transaction.dart';
import 'package:g_pay_app/utils/iconText.dart';
import 'package:g_pay_app/utils/navigate_to_another_page.dart';
import 'package:g_pay_app/utils/offers_and_rewards_section.dart';
import 'package:g_pay_app/utils/peoplesInfo.dart';
import 'package:g_pay_app/utils/tryThese.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  //text in black container1
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
                  //Text in black Container2
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
                  //Text and Icon in black Container 3
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconText(
                            icon: Icons.qr_code_scanner,
                            text1: "Scan any",
                            text2: "QR code"),
                        iconText(
                            icon: Icons.phone, text1: "Pay", text2: "contacts"),
                        iconText(
                            icon: Icons.send_to_mobile_rounded,
                            text1: "Pay phone",
                            text2: "number"),
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
                            icon: Icons.payments_sharp,
                            text1: "Pay",
                            text2: "Bills"),
                        iconText(
                            icon: Icons.phone_android_outlined,
                            text1: "Mobile",
                            text2: "Recharge"),
                      ],
                    ),
                  ),
                  //Activate UPI ID and UPI ID row
                  Padding(
                    padding: const EdgeInsets.all(4),
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
                                "Activate UPI Lite",
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
                          width: w * 0.47,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "People",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: textScaler.scale(18),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...userName.map(
                          (e) => peoplesInfo(
                            w: w,
                            text: e['name'],
                            image: e['image'],
                            context: context,
                            e: e,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bills & Recharges",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: textScaler.scale(18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "No Bills due. Try adding these!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: textScaler.scale(13),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TryTheseWidgets(
                        w: w,
                        icon: Icons.tv,
                        text1: "DTH / Cable",
                        text2: "TV",
                      ),
                      TryTheseWidgets(
                        w: w,
                        icon: Icons.lightbulb,
                        text1: "Electricity",
                        text2: "",
                      ),
                      TryTheseWidgets(
                        w: w,
                        icon: Icons.paypal,
                        text1: "Postpaid",
                        text2: "mobile",
                      ),
                      TryTheseWidgets(
                        w: w,
                        icon: Icons.broadcast_on_home,
                        text1: "Broadline /",
                        text2: "Landline",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  //view all container
                  Container(
                    width: w * 0.25,
                    height: h * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.lightBlue.shade100,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  //offers and rewards text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Offers and Rewards",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: textScaler.scale(18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    children: [
                      offersAndRewardsSection(
                        w: w,
                        text: "Rewards",
                        image:
                            "https://media.istockphoto.com/id/1256869305/vector/congrats-poster-with-open-gift-box-ribbons-and-confetti-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=St3xCt1AzcjwDqyUbnFxqyTIHtooiq5P8MkcnRUBS3c=",
                      ),
                      offersAndRewardsSection(
                        w: w,
                        text: "Offers",
                        image:
                            "https://media.istockphoto.com/id/1320924263/vector/notched-stamp-3d-with-percent-vector-icon-pink-label-blot-with-white-discount-special.jpg?s=612x612&w=0&k=20&c=6wZWkYBZhuK-wI2ArQ0d48wkD5kmgMjdzVfsbIcvH-8=",
                      ),
                      offersAndRewardsSection(
                        w: w,
                        image:
                            "https://media.istockphoto.com/id/1364201143/vector/referral-link-vector-icon-on-blue-background-flat-image-with-long-shadow-layers-grouped-for.jpg?s=612x612&w=0&k=20&c=RkCOMXtA8Er3IdgFzsl-mbkGb7WTbrhOtAUT6bqXV9s=",
                        text: "Referals",
                      ),
                      offersAndRewardsSection(
                        w: w,
                        image:
                            "https://media.istockphoto.com/id/1028050414/video/cricket-icon-animation.jpg?s=640x640&k=20&c=UgFYpGCKlREWzI1OL0lcQjeIASrN0AlIMyU5SmG3Vwg=",
                        text: "Tez Shot",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Manage Your Money",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: textScaler.scale(18),
                ),
              ),
            ),
            Container(
              height: h * 0.1,
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.document_scanner,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: w * 0.03,
                      ),
                      Text(
                        "Get a loan",
                        style: TextStyle(
                          fontSize: textScaler.scale(18),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.40,
                      ),
                      Text(
                        "Apply Now",
                        style: TextStyle(
                          fontSize: textScaler.scale(14),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.08 * w,
                      ),
                      Text(
                        "Instant approval & paperless",
                        style: TextStyle(
                          fontSize: textScaler.scale(13),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Navigate_to(
              h: h,
              textScaler: textScaler,
              icon: Icons.check,
              text: "Check you CIBIL score for free",
            ),
            Navigate_to_transaction(
                h: h,
                textScaler: textScaler,
                icon: Icons.timer,
                text: "See transaction history",
                context: context),
            Navigate_to(
              h: h,
              textScaler: textScaler,
              icon: Icons.business,
              text: "Check bank balance",
            ),
          ],
        ),
      ),
    );
  }
}
