import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/links_tab_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/profile_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/saved_courses_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const LiknsTabBar(),
    const CourseSearch(),
    const SavedCoursesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        body: pages.elementAt(currentPage),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // Set the background color of the BottomNavigationBar to black
            canvasColor: Colors.black,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // Set the icon and label color for both selected and unselected items
            selectedItemColor: Colors.white, // Selected icon and label color
            unselectedItemColor: Colors.grey, // Unselected icon and label color
            currentIndex: currentPage,
            onTap: (int value) {
              setState(() {
                currentPage = value;
              });
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
                icon: Icon(Icons.save),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
