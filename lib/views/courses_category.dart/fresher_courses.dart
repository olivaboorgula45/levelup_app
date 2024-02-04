import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class FresherCourse extends StatefulWidget {
  @override
  State<FresherCourse> createState() => MyFresherCourseListState();
}

class MyFresherCourseListState extends State<FresherCourse> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> FresherCourse = [
    {"title": "Azure", "avgSalary": "Avg salary:3.5 LPA"},
    {"title": "AWS", "avgSalary": "Avg salary:4.0 LPA"},
    {"title": "Google cloud platform", "avgSalary": "Avg salary:4.0 LPA"},
    {"title": "Software Engineer", "avgSalary": "Avg Salary: ₹4.25 LPA"},
    {"title": "Data Entry Operator", "avgSalary": "Avg Salary: ₹2.0 LPA"},
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {
      "title": "Customer Support Executive",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {"title": "Content Writer", "avgSalary": "Avg Salary: ₹3.25 LPA"},
    {"title": "Sales Executive/Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Marketing Associate", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "HR Assistant/Trainee", "avgSalary": "Avg Salary: ₹3.75 LPA"},
    {"title": "Graphic Designer", "avgSalary": "Avg Salary: ₹3.25 LPA"},
    {"title": "IT Support/Help Desk", "avgSalary": "Avg Salary: ₹3.25 LPA"},
    {"title": "Research Analyst", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Teaching/Training Assistant",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {"title": "Banking Associate", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Quality Analyst (QA)", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Business Analyst Trainee", "avgSalary": "Avg Salary: ₹4.75 LPA"},
    {
      "title": "Digital Marketing Associate",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "Network Support Engineer", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Field Sales Executive", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Web Developer Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Technical Support Executive",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {"title": "Market Research Assistant", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Content Marketing Assistant",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "Legal Assistant Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Event Coordinator Assistant",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "Finance Analyst Trainee", "avgSalary": "Avg Salary: ₹4.75 LPA"},
    {"title": "Healthcare Support Staff", "avgSalary": "Avg Salary: ₹3.25 LPA"},
    {"title": "Software Tester Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "UI/UX Designer Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Digital Illustrator Trainee",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {
      "title": "Public Relations Assistant",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {
      "title": "Human Resources Coordinator",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {
      "title": "Supply Chain Analyst Trainee",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "CAD Designer Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Interior Design Assistant",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {"title": "Technical Writer Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Junior Data Analyst", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "SEO Analyst Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "IT Security Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Digital Media Coordinator", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Sales Coordinator", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Mobile App Developer Trainee",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {
      "title": "Project Management Trainee",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "GIS Analyst Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {"title": "Legal Research Assistant", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "System Administrator Trainee",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {"title": "Content Moderator Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Digital Learning Coordinator",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {
      "title": "Inventory Control Assistant",
      "avgSalary": "Avg Salary: ₹3.25 LPA"
    },
    {"title": "CAD/CAM Engineer Trainee", "avgSalary": "Avg Salary: ₹4.0 LPA"},
    {
      "title": "Environmental Analyst Trainee",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
    {
      "title": "Business Development Associate",
      "avgSalary": "Avg Salary: ₹4.0 LPA"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Container(
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
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              final profession = FresherCourse[index];
              return GestureDetector(
                onTap: () {
                  // Handle onTap event
                },
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const ArticleScreen(
                          courseName: 'Level Up',
                          generatedArticle: '',
                        ));
                  },
                  child: Card(
                    elevation: 3,
                    margin: const EdgeInsets.fromLTRB(10, 25, 10, 25),
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
                ),
              );
            },
            itemCount: FresherCourse.length,
          ),
        ),
      ),
    );
  }
}
