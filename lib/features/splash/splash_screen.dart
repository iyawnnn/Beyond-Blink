import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Temporary logic: Wait 3 seconds then go to Login
    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) context.go('/login');
    });

    return const Scaffold(
      backgroundColor: Color(0xFF1E2648), // Your Navy Blue
      body: Center(child: Text("Splash Screen", style: TextStyle(color: Colors.white))),
    );
  }
}