import 'package:eatwithme/dashboard.dart';
import 'package:eatwithme/filter.dart';
import 'package:eatwithme/homepage.dart';
import 'package:eatwithme/login.dart';
import 'package:eatwithme/order.dart';
import 'package:eatwithme/payment.dart';
import 'package:eatwithme/previous_orders.dart';
import 'package:eatwithme/restaurant_items.dart';
import 'package:eatwithme/signin.dart';

import 'package:eatwithme/test.dart';
import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      //DevicePreview(child:
      MyApp()
      //)
      );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        //builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Login());
  }
}
