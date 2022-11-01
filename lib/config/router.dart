import 'package:ecommerce_app/modules/home/screen/home_screen.dart';
import 'package:ecommerce_app/modules/on_boarding/screen/on_boarding_screen.dart';
import 'package:ecommerce_app/modules/register/screen/get_in.dart';
import 'package:ecommerce_app/modules/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  // initialLocation: '/splash_screen',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/on_boarding',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
      path: '/get_in',
      builder: (BuildContext context, GoRouterState state) {
        return const GetYouInScreen();
      },
    ),
  ],
);
