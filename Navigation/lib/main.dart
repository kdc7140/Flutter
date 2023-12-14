import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_three_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

const HOME_ROUTE = '/';

void main() {
  runApp(MaterialApp(
    // home: Home_Screen(),

    initialRoute: HOME_ROUTE,
    routes: {
      HOME_ROUTE: (context) => Home_Screen(),
      'one': (context) => RouteOneScreen(),
      'two': (context) => RouteTwoScreen(),
      'three': (context) => RouteThreeScreen(),
    },
  ));
}

