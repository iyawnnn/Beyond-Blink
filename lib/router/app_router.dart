import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import Screens
import '../features/splash/splash_screen.dart';
import '../features/auth/login_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/dashboard/items_list_screen.dart';
import '../features/cart/cart_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/dashboard/main_wrapper.dart'; 

// Private Navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _shellNavigatorItems = GlobalKey<NavigatorState>(debugLabel: 'shellItems'); 
final _shellNavigatorCart = GlobalKey<NavigatorState>(debugLabel: 'shellCart');
final _shellNavigatorProfile = GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

final goRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    
    // THE NAVBAR SHELL
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainWrapper(navigationShell: navigationShell);
      },
      branches: [
        // Branch 1: Home (Index 0)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHome,
          routes: [
            GoRoute(
              path: '/dashboard',
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),

        // Branch 2: Items (Index 1) - CRITICAL FOR FIXING CRASH
        StatefulShellBranch(
          navigatorKey: _shellNavigatorItems,
          routes: [
            GoRoute(
              path: '/items',
              builder: (context, state) => const ItemsListScreen(),
            ),
          ],
        ),

        // Branch 3: Cart (Index 2)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCart,
          routes: [
            GoRoute(
              path: '/cart',
              builder: (context, state) => const CartScreen(),
            ),
          ],
        ),

        // Branch 4: Profile (Index 3)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfile,
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);