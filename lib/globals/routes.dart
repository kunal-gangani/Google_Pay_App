import 'package:g_pay_app/views/home_page.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String homePage = '/';

  static Map<String,WidgetBuilder> myRoutes = {
    homePage : (context) => const MyHome(),
    
  };
}