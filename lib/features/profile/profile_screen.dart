import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color themeColor = Color(0xFF162651);
  static const Color iconBgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
          bottom: 100,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile Picture
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'lib/core/assets/images/profile.png',
                  height: 140,
                  width: 140,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 140,
                      width: 140,
                      color: Colors.grey.shade300,
                      child: const Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Lorna Alvarado',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: themeColor,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              '023 4567 8901 2345',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 32),

            _profileTile(
              icon: Icons.settings,
              label: 'Edit Profile',
              onTap: () {},
            ),
            _profileTile(
              icon: Icons.key,
              label: 'Change Password',
              onTap: () {},
            ),
            _profileTile(
              icon: Icons.info,
              label: 'Information',
              onTap: () {},
            ),
            _profileTile(
              icon: Icons.support_agent_rounded,
              label: 'Customer Service',
              onTap: () {},
            ),
            _profileTile(
              icon: Icons.logout_rounded,
              label: 'Log Out',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            color: themeColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // ✅ ICON STYLE COPIED FROM CUSTOMER SERVICE / LOGOUT
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: themeColor,
                  size: 22,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
