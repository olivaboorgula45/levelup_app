import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/links_tab_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/profile_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/saved_courses_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/search_screen.dart';

int currentPage = 0;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  DateTime? currentBackPressTime;
  List<Widget> pages = [
    const HomePage(),
    const LiknsTabBar(),
    const CourseSearch(),
    const SavedCoursesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade900,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white, // Selected icon and label color
      unselectedItemColor: Colors.grey, // Unselected icon and label color
      currentIndex: currentPage,
      onTap: (int value) {
        setState(() {
          currentPage = value;
        });
    
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => pages[currentPage],
        ));
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.link),
          label: "Careers",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_rounded),
          label: "Saved",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
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
    return Future.value(true);
  }
}
