import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile picture
            const CircleAvatar(
              radius: 45,
              child: Text(
                '👨',
                style: TextStyle(fontSize: 40),
              ),
            ),

            const SizedBox(height: 15),

            // Name
            const Text(
              'Abiye Tesfaye',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            // Description
            const Text(
              'Flutter Student',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // Menu items
            profileItem(
              Icons.person,
              'Personal Information',
            ),

            profileItem(
              Icons.notifications,
              'Notifications',
            ),

            profileItem(
              Icons.dark_mode,
              'Dark Mode',
            ),

            profileItem(
              Icons.logout,
              'Logout',
            ),
          ],
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey),
        ),
        onTap: () {
          // Add action here
        },
      ),
    );
  }
}