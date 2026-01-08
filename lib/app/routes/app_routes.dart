import 'package:flutter/material.dart';
import '../../core/constant/route_name.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';


class AppRoutes {
  static const String initialRoute = RouteName.home;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.home: (context) => const HomeScreen(),

  };
}