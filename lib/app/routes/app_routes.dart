import 'package:flutter/material.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/expert_details.dart';
import 'package:parthtrada/features/login/presentation/view/screens/login_screen.dart';
import 'package:parthtrada/features/search/presentation/view/screen/search_screen.dart';
import '../../core/constant/route_name.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';


class AppRoutes {
  static const String initialRoute = RouteName.search;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.home: (context) => const HomeScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.search: (context) => const SearchScreen(),
    RouteName.expertDetails: (context) => const ExpertDetails(),
  };
}