// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class SavedCoursesScreen extends StatefulWidget {
  const SavedCoursesScreen({Key? key}) : super(key: key);

  @override
  State<SavedCoursesScreen> createState() => _SavedCoursesScreenState();
}

class _SavedCoursesScreenState extends State<SavedCoursesScreen> {
  List<Map<String, String>> savedCourses = [];
  bool showCPI = false;
  Timer? timer;

  void getSavedData() {
    savedCourses.clear();
    SharedPreferences.getInstance().then((value) {
      print(value.getStringList('data'));
      for (var element in (value.getStringList('data') ?? [])) {
        savedCourses
            .add(Data.getData().firstWhere((_) => _['title'] == element));
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getSavedData();
  }

  @override
  Widget build(BuildContext context) {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {});
    });
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
            title: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                child: const Text(
                  'Saved Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          body: savedCourses.isEmpty
              ? Center(
                  child: Text('No saved courses.'),
                )
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    ListView.builder(
                      itemCount: savedCourses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 120,
                          width: 300,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Colors.grey, width: 1.0),
                            ),
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            elevation: 3,
                            color: Colors.black,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: IconButton(
                                    onPressed: () {
                                      SharedPreferences.getInstance()
                                          .then((value) {
                                        List<String> current =
                                            value.getStringList('data') ?? [];
                                        if (current.contains(
                                            savedCourses[index]['title'])) {
                                          current.remove(
                                              savedCourses[index]['title']);
                                        } else {
                                          current
                                              .add(savedCourses[index]['title']!);
                                        }
                                        value.setStringList('data', current);
                                        setState(() {
                                          getSavedData();
                                        });
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: ListTile(
                                    title: Text(
                                      savedCourses[index]['title']!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    onTap: () {
                                      if (savedCourses[index]['avgSalary'] !=
                                          null) {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => ArticleScreen(
                                            courseName: savedCourses[index]
                                                ['title']!,
                                          ),
                                        ));
                                      } else if (savedCourses[index]['url'] !=
                                          null) {
                                        launchUrl(Uri.parse(
                                            savedCourses[index]['url']!));
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    if (showCPI)
                      Container(
                          decoration:
                              BoxDecoration(color: Colors.black.withOpacity(0.6)),
                          child: Center(child: CircularProgressIndicator()))
                  ],
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }
}
