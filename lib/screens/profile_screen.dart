// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:onboarding/widgets/profile_menu_item.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF1A73E8),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/user-profile.jpg'),
            ),
            title: Text('John Doe'),
            subtitle: Text('john.doe@example.com'),
          ),
          SizedBox(height: 20),
          ProfileMenuItem(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ProfileMenuItem(
            icon: Icons.payment,
            title: 'Payment Methods',
            onTap: () {
              // Navigate to payment methods screen
            },
          ),
          ProfileMenuItem(
            icon: Icons.security,
            title: 'Security',
            onTap: () {
              // Navigate to security settings
            },
          ),
          ProfileMenuItem(
            icon: Icons.logout,
            title: 'Sign Out',
            onTap: () {
              //
            },
          ),
        ],
      ),
    );
  }
}
