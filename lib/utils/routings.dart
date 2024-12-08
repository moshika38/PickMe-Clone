import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pick_me_clone/authenticate/login_screen.dart';
import 'package:pick_me_clone/authenticate/on_boarding.dart';
import 'package:pick_me_clone/authenticate/verify_screen.dart';
import 'package:pick_me_clone/screens/account_screen.dart';
import 'package:pick_me_clone/screens/activity_screen.dart';
import 'package:pick_me_clone/screens/home_screen.dart';
import 'package:pick_me_clone/screens/main_screen.dart';
import 'package:pick_me_clone/screens/notification_screen.dart';

class Routings {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation:  '/start',
    routes: [
      // user auth navigation
      GoRoute(
        name: "start",
        path: '/start',
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        name: "login",
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: "verify",
        path: '/verify',
        builder: (context, state) => const VerifyScreen(),
      ),

      // app level routings
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          //home
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: "home",
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          //activities
          StatefulShellBranch(

            routes: [
              GoRoute(
                name: "activity",
                path: '/activity',
                builder: (context, state) => const ActivityScreen(),
              ),
            ],
          ),
          //notification
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: "notification",
                path: '/notification',
                builder: (context, state) => const NotificationScreen(),
              ),
            ],
          ),
          //account
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: "account",
                path: '/account',
                builder: (context, state) => const AccountScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
