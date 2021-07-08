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

import 'core/config.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // initialize app configurations
    AppConfig.init(context);

    return Scaffold(
      body: Column(
        children: [
          // image
          Container(
            height: AppConfig.kDeviceHeight * 0.4,
            width: AppConfig.kDeviceWidth,
            decoration: BoxDecoration(
              color: AppConfig.kColorScheme.background,
              image: DecorationImage(
                image: AssetImage("images/LA.jpg"),
              ),
            ),
          ),

          // button
          GestureDetector(
            onTap: () {
              // todo -> send us to some other page
            },
            child: Container(
              width: AppConfig.kDeviceWidth * 0.6,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppConfig.kColorScheme.secondary,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                "Tap here",
                style: AppConfig.kTextTheme.button?.copyWith(
                  color: AppConfig.kColorScheme.onSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
