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
import 'package:flutter_courier_service_project/core/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

import 'core/config.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 550)).then((_) {
      if (mounted) setState(() => _visible = !_visible);
    });
  }

  @override
  Widget build(BuildContext context) {
    // initialize app configurations
    AppConfig.init(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image
          SizedBox(
            height: AppConfig.kDeviceHeight * 0.4,
            width: AppConfig.kDeviceWidth,
            child: AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _visible ? 1.0 : 0.0,
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                height: _visible ? AppConfig.kDeviceHeight * 0.4 : 0.0,
                width: _visible ? AppConfig.kDeviceWidth : 0.0,
                decoration: BoxDecoration(
                  color: AppConfig.kColorScheme.background,
                  image: DecorationImage(
                    image: AssetImage("images/LA.jpg"),
                  ),
                ),
              ),
            ),
          ),

          // description
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 48),
            child: Text(
              "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: AppConfig.kTextTheme.bodyText1?.copyWith(
                color: AppConfig.kColorScheme.onBackground.withOpacity(0.45),
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // button
          GestureDetector(
            onTap: () => context.router.navigate(LoginRoute()),
            child: Container(
              width: AppConfig.kDeviceWidth * 0.4,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppConfig.kColorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Get Started",
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
