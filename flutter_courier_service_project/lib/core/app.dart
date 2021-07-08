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
import 'package:flutter_courier_service_project/core/theme.dart';
import 'package:flutter_courier_service_project/welcome.dart';

import 'constants.dart';
import 'routes/routes.gr.dart';

/// router
final _appRouter = AppRouter();

/// entry point of the entire application
///
/// It has details on theme, routes etc.
class LaikosDeliveriesApp extends StatelessWidget {
  const LaikosDeliveriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: lightTheme(context),
    );
  }
}
