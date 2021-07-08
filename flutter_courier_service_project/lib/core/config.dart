import 'package:flutter/material.dart';

// sets up configurations for the application
class AppConfig {
  // dimensions of the current display
  static late double kDeviceWidth;
  static late double kDeviceHeight;
  static late ThemeData kTheme;
  static late ColorScheme kColorScheme;
  static late TextTheme kTextTheme;

  static void init(BuildContext context) {
    // size of current display
    var size = MediaQuery.of(context).size;

    // assign values
    kDeviceHeight = size.height;
    kDeviceWidth = size.width;

    kTheme = Theme.of(context);
    kColorScheme = kTheme.colorScheme;
    kTextTheme = kTheme.textTheme;
  }
}
