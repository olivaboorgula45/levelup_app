import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // User Profile Circle Avatar
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),
                // User Name
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: const Text(
                    'User Name',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                const SizedBox(height: 20),
                // Email
                buildProfileItem('Email', Icons.email),
                const SizedBox(height: 10), // Added spacing
                // Logout
                buildProfileItem('Logout', Icons.logout),
                const SizedBox(height: 10), // Added spacing
                // Language Preferences
                buildProfileItem('Language Preferences', Icons.language),
                const SizedBox(height: 10), // Added spacing
                // Dark Mode
                buildProfileItem('Dark Mode', Icons.dark_mode),
                const SizedBox(height: 10), // Added spacing
                // Settings
                buildProfileItem('Settings', Icons.settings),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileItem(String title, IconData iconData) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Icon(iconData, color: Colors.white70),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}


