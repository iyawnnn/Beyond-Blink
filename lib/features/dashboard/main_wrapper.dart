import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../core/themes/app_colors.dart';

class MainWrapper extends StatefulWidget {
  final Widget navigationShell;
  const MainWrapper({super.key, required this.navigationShell});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  void _goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      extendBody: true, // Essential for the floating look
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.primary, // Navy Blue
          borderRadius: BorderRadius.circular(40), // Pill Shape
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            rippleColor: Colors.white.withOpacity(0.1),
            hoverColor: Colors.white.withOpacity(0.1),
            gap: 0, // Zero gap (No Text)
            iconSize: 26,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            duration: const Duration(milliseconds: 300),
            
            // Active Tab Style
            tabBackgroundColor: Colors.white,
            activeColor: AppColors.primary,
            
            // Inactive Tab Style
            color: Colors.white.withOpacity(0.7),

            selectedIndex: widget.navigationShell.currentIndex,
            onTabChange: (index) => _goToBranch(index),
            tabs: const [
              // 1. Home
              GButton(icon: Icons.home_rounded),

              // 2. Collection / Shop (✅ CHANGED TO CART)
              GButton(icon: Icons.shopping_cart_rounded),

              // 3. Cart / Bag (Kept as Bag to look different)
              GButton(icon: Icons.local_mall_outlined),

              // 4. Profile
              GButton(icon: Icons.person_outline_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

extension GoRouterExtension on Widget {
  void goBranch(int index, {bool initialLocation = false}) {
    if (this is StatefulNavigationShell) {
      (this as StatefulNavigationShell).goBranch(
        index,
        initialLocation: initialLocation,
      );
    }
  }

  int get currentIndex {
     if (this is StatefulNavigationShell) {
      return (this as StatefulNavigationShell).currentIndex;
    }
    return 0;
  }
}