// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/links_categories.dart/freelancings.dart';
import 'package:flutter_application_1/views/links_categories.dart/internships_search.dart';
import 'package:flutter_application_1/views/links_categories.dart/jobs_search.dart';
import 'package:flutter_application_1/views/links_categories.dart/learnings.dart';
import 'package:flutter_application_1/views/links_categories.dart/part_time_jobs.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';

class LiknsTabBar extends StatefulWidget {
  const LiknsTabBar({Key? key}) : super(key: key);

  @override
  _LiknsTabBarState createState() => _LiknsTabBarState();
}

class _LiknsTabBarState extends State<LiknsTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        currentPage = 0;
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //   builder: (context) => HomePage(),
        // ));
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
        return Future.value(false);
      },
      child: MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Text(
                "Career building platforms",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            backgroundColor: Colors.grey.shade900,
            toolbarHeight: 50,
            elevation: 0,
          ),
          body: Column(
            children: [
              SafeArea(
                child: Container(
                  color: Colors.grey.shade900,
                  child: TabBar(
                    tabAlignment: TabAlignment.start,
                    indicatorColor: Colors.white,
                    controller: _tabController,
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Learnings'),
                      Tab(text: 'Jobs'),
                      Tab(text: 'Internships'),
                      Tab(text: 'Freelancing'),
                      Tab(text: 'Part-time Jobs'),
                    ],
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    unselectedLabelColor: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    LearningPortalsScreen(),
                    JobPortalScreen(),
                    InternshipPortalsScreen(),
                    FreelancingPortalsScreen(),
                    PartTimeJobsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
