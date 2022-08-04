import 'package:dar_arkam_app/routes/routes.dart';
import 'package:flutter/material.dart';

import '../pages/home/home_layout.dart';
import '../pages/intro/intro_splash.dart';

class RouteGenerator {

  static Route<dynamic>? generateRoute(RouteSettings? settings) {
    final Object? params = settings!.arguments;
    switch (settings.name) {
      case Routes.startPage:
        return MaterialPageRoute(
          builder: (context) => const IntroSplash(),
          settings: const RouteSettings(name: Routes.startPage),
        );
        break;
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomeLayout(),
          settings: const RouteSettings(name: Routes.homePage),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeLayout(),
          settings: const RouteSettings(name: Routes.startPage),
        );
    }
  }
}