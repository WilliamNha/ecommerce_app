import 'package:ecommerce_app/modules/cart/screen/cart_screen.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/modules/home/screen/bottom_naviation_bar.dart';
import 'package:ecommerce_app/modules/home/screen/favorite_screen.dart';
import 'package:ecommerce_app/modules/home/screen/home_screen.dart';
import 'package:ecommerce_app/modules/home/screen/notification_screen.dart';
import 'package:ecommerce_app/modules/home/screen/view_category_detail.dart';
import 'package:ecommerce_app/modules/home/screen/view_product_detail.dart';
import 'package:ecommerce_app/modules/on_boarding/screen/on_boarding_screen.dart';
import 'package:ecommerce_app/modules/order/screen/order_screen.dart';
import 'package:ecommerce_app/modules/profile/screen/profile_screen.dart';
import 'package:ecommerce_app/modules/register/screen/get_in.dart';
import 'package:ecommerce_app/modules/register/screen/sign_in_screen.dart';
import 'package:ecommerce_app/modules/register/screen/sign_up_screen.dart';
import 'package:ecommerce_app/modules/splash/screen/splash_screen.dart';
import 'package:ecommerce_app/modules/wallet/screen/choose_payment_screen.dart';
import 'package:ecommerce_app/modules/wallet/screen/top_up_screen.dart';
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
    GoRoute(
      path: '/sign_in',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
    ),
    GoRoute(
      path: '/sign_up',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      path: '/bottom_navigation',
      builder: (BuildContext context, GoRouterState state) {
        return const BottomNavigationScreen();
      },
    ),
    GoRoute(
      path: '/view_product_detail',
      builder: (BuildContext context, GoRouterState state) {
        return ViewProductDetail(
          productModel: state.extra as ProductModel,
        );
      },
    ),
    GoRoute(
      name: 'ViewCategoryDetail',
      path: '/view_category_detail/:indexx/:title',
      builder: (BuildContext context, GoRouterState state) {
        return ViewCategoryDetailScreen(
          title: state.params['title'],
          indexx: int.parse(state.params['indexx']!),
        );
      },
    ),
    GoRoute(
      path: '/cart_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const CartScreen();
      },
    ),
    GoRoute(
      path: '/order_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderScreen();
      },
    ),
    GoRoute(
      path: '/top_up_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const TopUpScreen();
      },
    ),
    GoRoute(
      path: '/choose_payment_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const ChoosePaymentScreen();
      },
    ),
    GoRoute(
      path: '/profile_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: '/notification_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const NotificationScreen();
      },
    ),
    GoRoute(
      path: '/favorite_screen',
      builder: (BuildContext context, GoRouterState state) {
        return const FavoriteScreenn();
      },
    ),
  ],
);
