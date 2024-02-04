import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ITCourses extends StatefulWidget {
  @override
  State<ITCourses> createState() => MyITCoursesListState();
}

class MyITCoursesListState extends State<ITCourses> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> ITCourses = [
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Software Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Web Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Mobile App Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Database Administrator", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Systems Administrator", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Network Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "DevOps Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {
      "title": "Cloud Solutions Architect",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {"title": "Front End Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Backend Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "UI/UX Designer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Data Scientist", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Data Analyst", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {
      "title": "Machine Learning Engineer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "AI Research Scientist", "avgSalary": "Avg Salary: ₹8-30 LPA"},
    {"title": "Cybersecurity Analyst", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Project Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {"title": "IT Business Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "QA Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Software Test Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Support Specialist", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Security Consultant", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Technical Writer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Systems Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Business Intelligence Analyst",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "IT Trainer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Solutions Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Big Data Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {
      "title": "Network Security Engineer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Cloud Data Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Data Warehouse Developer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Blockchain Developer", "avgSalary": "Avg Salary: ₹6-25 LPA"},
    {"title": "Robotics Engineer", "avgSalary": "Avg Salary: ₹6-25 LPA"},
    {
      "title": "Augmented Reality Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {
      "title": "Virtual Reality Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Chatbot Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "E-commerce Solutions Developer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Mobile Game Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "3D Printing Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Embedded Systems Engineer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "IoT Solutions Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Compliance Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Operations Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Linux System Administrator",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Virtual Reality Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {
      "title": "Embedded Systems Engineer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "IT Security Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Software Quality Assurance Manager",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "AI Ethics Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Cloud DevOps Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Business Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "3D Printing Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IoT Solutions Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Compliance Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "E-commerce Solutions Developer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Quantum Computing Researcher",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Data Privacy Officer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "AR Developer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Technical Writer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "IT Solutions Sales Manager",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Blockchain Solutions Architect",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Chatbot Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Health IT Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Trainer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Remote Sensing Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Operations Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Cloud Solutions Architect",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {"title": "Mobile App Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Front End Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Backend Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Database Administrator", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "UI/UX Designer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Cloud Data Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Data Analyst", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Network Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {
      "title": "Software Development Engineer in Test",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Big Data Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Project Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Linux System Administrator",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Virtual Reality Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {
      "title": "Embedded Systems Engineer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "IT Security Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Software Quality Assurance Manager",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "AI Ethics Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Cloud DevOps Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Business Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "3D Printing Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IoT Solutions Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Compliance Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "E-commerce Solutions Developer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Quantum Computing Researcher",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Data Privacy Officer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "AR Developer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Technical Writer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "IT Solutions Sales Manager",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Blockchain Solutions Architect",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Chatbot Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Health IT Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Trainer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Remote Sensing Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Operations Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
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
              final profession = ITCourses[index];
              return GestureDetector(
                onTap: () {
                  // Handle onTap
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
                      title: Text(profession['title'],
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white70)),
                      subtitle: Text(profession['avgSalary'],
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              );
            },
            itemCount: ITCourses.length,
          ),
        ),
      ),
    );
  }
}
