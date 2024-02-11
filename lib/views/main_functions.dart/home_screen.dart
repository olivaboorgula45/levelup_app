import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/open_ai_services.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/courses_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            elevation: 0,
            title: const Text(
              "Level Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
          ),

          body: const CourseTabBar(),
          backgroundColor: Colors.black, // Add your CustomTabBar here
        ),
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Press back button again to exit.')));
      return Future.value(false);
    }
    return Future.value(false);
  }
}
