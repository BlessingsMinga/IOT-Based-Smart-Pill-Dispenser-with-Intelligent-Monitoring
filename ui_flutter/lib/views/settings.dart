import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final String username;
  final String email;
  final String phone;

  const SettingsPage({
    super.key,
    required this.username,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/user.png'), // Placeholder image
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              username,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(email, style: const TextStyle(color: Colors.grey)),
            Text(phone, style: const TextStyle(color: Colors.grey)),
            const Divider(height: 40),

            settingsTile(Icons.lock, "Change Password", () {}),
            settingsTile(Icons.notifications, "Notification Settings", () {}),
            settingsTile(Icons.help_outline, "Help & Support", () {}),
            settingsTile(Icons.logout, "Logout", () {
              // Handle logout
            }),
          ],
        ),
      ),
    );
  }

  Widget settingsTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
