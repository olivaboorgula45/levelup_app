import 'package:flutter/material.dart';
import 'package:flutter_application_1/courses_data.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';

class HighSalaryCourses extends StatefulWidget {
  const HighSalaryCourses({super.key});

  @override
  State<HighSalaryCourses> createState() => MyHighSalaryCoursesListState();
}

class MyHighSalaryCoursesListState extends State<HighSalaryCourses> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> HighSalaryCoursesList =
      Data.highSalaryCoursesList;

  // Define a color palette with different light and attractive gradient colors
  final List<Gradient> cardGradients = [
     LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.grey.shade900, Colors.grey.shade900],
    ),
     
    // Add more gradients as needed
  ];

  bool showCPI = false;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.8,
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                final profession = HighSalaryCoursesList[index];
                final gradient = cardGradients[index % cardGradients.length];

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
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.grey, width: 1),
                    ),
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: gradient,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text(
                            profession['title'],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            profession['avgSalary'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: HighSalaryCoursesList.length,
            ),
          ),
          if (showCPI)
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
              ),
              child: const Center(child: CircularProgressIndicator()),
            )
        ],
      ),
    );
  }
}
