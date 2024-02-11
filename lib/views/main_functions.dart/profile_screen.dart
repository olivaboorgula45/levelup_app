import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/login_screen.dart';
import 'package:share_plus/share_plus.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        currentPage = 0;
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //   builder: (context) => HomePage(),
        // ));
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
            (route) => false);
        return Future.value(false);
      },
      child: MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(),
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: false,
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
                    child: FittedBox(
                      child: Text(
                        FirebaseAuth.instance.currentUser?.email ?? '',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email
                  buildProfileItem(
                      FirebaseAuth.instance.currentUser?.email ?? '',
                      Icons.email,
                      () {}),
                  const SizedBox(height: 10), // Added spacing
                  // Logout
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Logout'),
                              content: Text('Sure want to logout?'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      FirebaseAuth.instance.signOut().then(
                                          (value) => Navigator.of(context)
                                              .pushReplacement(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          LoginScreen())));

                                      Navigator.of(context).pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text('Logout Successful')));
                                    },
                                    child: Text('Logout')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Cancel'))
                              ],
                            );
                          });
                    },
                    child: buildProfileItem('Logout', Icons.logout, () {}),
                  ),
                  const SizedBox(height: 10), // Added spacing
                  // Dark Mode
                  buildProfileItem('Dark Mode', Icons.dark_mode, () {}),
                  const SizedBox(height: 10), // Added spacing
                  // Settings
                  InkWell(
                    onTap: () {
                      Share.share(
                          'https://play.google.com/store/apps/details?id=com.example.flutter_application_1');
                    },
                    child: buildProfileItem('Share', Icons.share, () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileItem(String title, IconData iconData, Function onTap) {
    return InkWell(
      onTap: onTap(),
      child: Container(
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
            FittedBox(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
