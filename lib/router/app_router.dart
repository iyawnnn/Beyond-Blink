import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/splash/splash_screen.dart';
import '../features/auth/login_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/dashboard/items_list_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/cart/cart_screen.dart';

// This is the Navigation Logic
final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // 1. Splash
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    // 2. Login
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    // 3. Shell Route (Bottom Navigation Wrapper) will go here later.
    // For now, we link them directly so you can test basic flow.
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
      routes: [
        GoRoute(
          path: 'items',
          builder: (context, state) => const ItemsListScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartScreen(),
    ),
  ],
);