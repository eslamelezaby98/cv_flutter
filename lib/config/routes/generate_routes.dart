import 'package:cv_flutter/config/routes/app_routes.dart';
import 'package:cv_flutter/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class GenerateRoutes {
  Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const HomeScreen());
      default:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const HomeScreen());
    }
  }
}
