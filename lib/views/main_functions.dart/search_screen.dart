import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/functions.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseSearch extends StatefulWidget {
  const CourseSearch({Key? key}) : super(key: key);

  @override
  State<CourseSearch> createState() => _CourseSearchState();
}

class _CourseSearchState extends State<CourseSearch> {
  final _controller = TextEditingController();
  List<Map<String, String>> data = [];
  bool showCPI = false;
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
          backgroundColor: Colors.black, // Set background color to black
          body: Stack(
            alignment: Alignment.center,
            children: [
              SafeArea(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller,
                        style: const TextStyle(
                            color: Colors.white70), // Set text color to white
                        cursorColor: Colors.white70, // Set cursor color to white
                        decoration: InputDecoration(
                          hintText: 'Search for a course...',
                          hintStyle: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14), // Set hint text color to white
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white70,
                            size: 18,
                          ), // Set search icon color to white
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color:
                                    Colors.white70), // Set border color to white
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors
                                    .white), // Set enabled border color to white
                          ),
                        ),
                        onChanged: (value) {
                          data.clear();
                          if (_controller.text.isNotEmpty) {
                            setState(() {
                              data = Data.getData()
                                  .where((element) => element['title']!
                                      .trim()
                                      .toLowerCase()
                                      .contains(
                                          _controller.text.trim().toLowerCase()))
                                  .toSet()
                                  .toList();
                            });
                          } else {
                            setState(() {
                              data = Data.getData().toSet().toList();
                            });
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            if (data[index]['avgSalary'] != null) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ArticleScreen(
                                  courseName: data[index]['title']!,
                                ),
                              ));
                            } else if (data[index]['url'] != null) {
                              launchUrl(Uri.parse(data[index]['url']!));
                            }
                          },
                          title: Text(
                            data[index]['title'] ?? '',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(data[index]['avgSalary'] ?? ''),
                        ),
                      ),
                    )
                  ],
                ),
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
}
