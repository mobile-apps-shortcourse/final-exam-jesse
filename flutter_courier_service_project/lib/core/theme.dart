import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// light theme mode
ThemeData lightTheme(BuildContext context) => ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(
        background: Colors.white,
        secondary: Color(0xff018837),
        primary: Color(0xff017830),
        surface: Colors.grey[200]!,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onPrimary: Colors.white,
      ),
      textTheme: GoogleFonts.rubikTextTheme(),
    );
