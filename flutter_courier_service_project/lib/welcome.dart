/// File: welcome.dart
/// Project: flutter_courier_service_project
/// Created Date: Thursday, June 24th 2021, 11:38:47 am
/// Author: Mobile Apps <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 1:09:22 pm
/// Modified By: Mobile Apps <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';

class LaikosDeliveries extends StatelessWidget {
  // This widget is the root of your application.
  const LaikosDeliveries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("images/LA.jpg"),
          ),
        ),
      ),
    );
  }
}
