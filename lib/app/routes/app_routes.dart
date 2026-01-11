import 'package:flutter/material.dart';
import 'package:parthtrada/features/expert_details/presentation/view/screen/expert_details.dart';
import 'package:parthtrada/features/login/presentation/view/screens/login_screen.dart';
import 'package:parthtrada/features/messages/presentaton/view/screen/chat_screen.dart';
import 'package:parthtrada/features/messages/presentaton/view/screen/messages_screen.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/edit_profile.dart';
import 'package:parthtrada/features/profile/presentation/view/screen/profile_screen.dart';
import 'package:parthtrada/features/schedule/presentation/view/screen/notification_screen.dart';
import 'package:parthtrada/features/schedule/presentation/view/screen/schedule_screen.dart';
import 'package:parthtrada/features/search/presentation/view/screen/search_screen.dart';
import '../../core/constant/route_name.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';


class AppRoutes {
  static const String initialRoute = RouteName.profile;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.home: (context) => const HomeScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.search: (context) => const SearchScreen(),
    RouteName.expertDetails: (context) => const ExpertDetails(),
    RouteName.schedule: (context) => const ScheduleScreen(),
    RouteName.notification: (context) => const NotificationScreen(),
    RouteName.messages: (context) => const MessagesScreen(),
    RouteName.chat: (context) => const ChatScreen(),
    RouteName.profile: (context) => const ProfileScreen(),
    RouteName.editProfile: (context) => const EditProfile(),

  };
}