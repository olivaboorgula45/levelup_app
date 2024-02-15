// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/courses_category.dart/cloud_computing.dart';
import 'package:flutter_application_1/views/courses_category.dart/demanded_courses.dart';
import 'package:flutter_application_1/views/courses_category.dart/fresher_courses.dart';
import 'package:flutter_application_1/views/courses_category.dart/high_salary_courses.dart';
import 'package:flutter_application_1/views/courses_category.dart/it_courses.dart';
import 'package:flutter_application_1/views/courses_category.dart/mba_jobs.dart';
import 'package:flutter_application_1/views/courses_category.dart/non_it.dart';
import 'package:flutter_application_1/views/courses_category.dart/programming_languages.dart';
import 'package:flutter_application_1/views/courses_category.dart/tools.dart';

class CourseTabBar extends StatefulWidget {
  const CourseTabBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CourseTabBarState createState() => _CourseTabBarState();
}

class _CourseTabBarState extends State<CourseTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabAlignment: TabAlignment.start,
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Demanded'),
            Tab(text: 'Freshers'),
            Tab(text: 'High Salary'),
            Tab(text: 'IT'),
            Tab(text: 'Non-IT'),
            Tab(text: 'Tools'),
            Tab(text: 'Cloud Computing'),
            Tab(text: 'Programming Languages'),
            Tab(text: 'MBA'),
          ],
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelColor: Colors.grey,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              const DemandedCourse(),
              const FresherCourse(),
              const HighSalaryCourses(),
              const ITCourses(),
              const NonItCourses(),
              const SoftwareTools(),
              const CloudComputing(),
              const ProgrammingLanguages(),
              const MBAJobs(),
            ],
          ),
        ),
      ],
    );
  }
}
