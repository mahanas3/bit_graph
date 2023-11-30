import 'package:bit_graph/routes/route_name.dart';
import 'package:bit_graph/screens/home_screen/bottomnavigation.dart';
import 'package:bit_graph/screens/home_screen/dialytask_screen.dart';
import 'package:bit_graph/screens/list_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> routesetting(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (context) => const BottomNavigation(),
        );
      case RouteName.dashBoard:
        return MaterialPageRoute(
          builder: (context) => const DashBoard(),
        );
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const DialyTask(),
          );
        }
    }
  }
}
