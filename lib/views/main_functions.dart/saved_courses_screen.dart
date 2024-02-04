// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SavedCoursesScreen extends StatelessWidget {
  const SavedCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample list of saved course titles
    List<String> savedCourses = [
      "Data Analyst",
      "Flutter developer",
      "Blockchain Developer",
      "Cloud Engineer",
      "Cybersecurity Engineer",
    ];

    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
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
        body: ListView.builder(
          itemCount: savedCourses.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 120,
              width: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                elevation: 3,
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      right: 5,
                      child: IconButton(
                        onPressed: () {
                          // Handle remove button pressed
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
                          savedCourses[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                        onTap: () {
                          // Handle tapping on a saved course
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
