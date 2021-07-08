/// File: app.dart
/// Project: flutter_courier_service_project
/// Created Date: Monday, June 21st 2021, 11:39:15 pm
/// Author: Mobile Apps <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 1:05:13 am
/// Modified By: Mobile Apps <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';
import 'package:flutter_courier_service_project/welcome.dart';

import 'constants.dart';

/// entry point of the entire application
///
/// It has details on theme, routes etc.
class LaikosDeliveriesApp extends StatelessWidget {
  const LaikosDeliveriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          background: Colors.white,
        ),
      ),
      home: WelcomePage(),
    );
  }
}
