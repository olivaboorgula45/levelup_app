import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/functions.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';
import 'package:get/get.dart';
import 'dart:convert';

// ignore: use_key_in_widget_constructors
class FresherCourse extends StatefulWidget {
  @override
  State<FresherCourse> createState() => MyFresherCourseListState();
}

class MyFresherCourseListState extends State<FresherCourse> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> FresherCourse = Data.fresherCourse;

  bool showCPI = false;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Color.fromARGB(255, 3, 12, 65)],
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.8, crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  final profession = FresherCourse[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ArticleScreen(
                          courseName: profession['title'],
                        ),
                      ));
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      color: Colors.black,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            profession['title'],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          ),
                          subtitle: Text(
                            profession['avgSalary'],
                            style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: FresherCourse.length,
              ),
            ),
          ),
          if (showCPI)
            Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                child: Center(child: CircularProgressIndicator()))
        ],
      ),
    );
  }
}
