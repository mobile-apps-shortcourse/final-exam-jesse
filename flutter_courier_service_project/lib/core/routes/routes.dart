import 'package:auto_route/auto_route.dart';
import 'package:flutter_courier_service_project/features/authentication/presentation/pages/login.dart';
import 'package:flutter_courier_service_project/welcome.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}
