import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Define your colors
  static const Color primary = Color(0xFF162651);
  static const Color white = Colors.white;
  static const Color gray = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Column(
          children: [
            // Top Image (very big and centered)
            Expanded(
              flex: 6, // more space for the image
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 0),
                  child: Image.asset(
                    'lib/core/assets/images/login_screen.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
              ),
            ),

            // Login Box (minimal height, just wraps contents)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // shrink to fit contents
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Email label
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Email field
                  TextField(
                    style: const TextStyle(color: primary, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'sample@gmail.com',
                      hintStyle: const TextStyle(color: gray, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: primary),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Password label
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Password field
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: primary, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: gray, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: primary),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: primary),
                      ),
                      suffixIcon:
                          const Icon(Icons.visibility, color: primary),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Remember me + Forgot Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            activeColor: primary,
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(color: primary, fontSize: 12),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: primary, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Login Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => context.go('/dashboard'),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Create new account
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Don't have an account? Create a new account",
                        style: TextStyle(color: primary, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
