import 'package:g_pay_app/views/details_page.dart';
import 'package:g_pay_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:g_pay_app/views/transactions.dart';

class Routes{
  static const String homePage = '/';
  static const String detailPage = 'DetailPage';
  static const String transactionPage = 'TransactionPage';


  static Map<String,WidgetBuilder> myRoutes = {
    homePage : (context) => const MyHome(),
    detailPage :(context) => const DetailsPage(),
    transactionPage :(context) => const TransactionHistory(),
  };
}