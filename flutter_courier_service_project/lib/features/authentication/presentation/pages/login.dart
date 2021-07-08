import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_courier_service_project/core/config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // content
          Positioned.fill(
            top: 84,
            child: Column(
              children: [
                Text("Hello world"),
              ],
            ),
          ),

          // back button
          Positioned(
            left: 16,
            top: 12,
            child: GestureDetector(
              onTap: () => context.router.pop(),
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppConfig.kColorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_right_alt,
                    color: AppConfig.kColorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
