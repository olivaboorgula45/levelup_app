import 'package:flutter/material.dart';

class CourseSearch extends StatelessWidget {
  const CourseSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        backgroundColor: Colors.black, // Set background color to black
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: const TextStyle(color: Colors.white70), // Set text color to white
              cursorColor: Colors.white70, // Set cursor color to white
              decoration: InputDecoration(
                hintText: 'Search for a course...',
                hintStyle: const TextStyle(color: Colors.white70, fontSize: 14), // Set hint text color to white
                prefixIcon: const Icon(Icons.search, color: Colors.white70,size: 18,), // Set search icon color to white
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white70), // Set border color to white
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white), // Set enabled border color to white
                ),
              ),
              onChanged: (value) {
                // Handle search query changes here
              },
            ),
          ),
        ),
      ),
    );
  }
}
