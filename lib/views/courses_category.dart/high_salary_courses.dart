import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HighSalaryCourses extends StatefulWidget {
  @override
  State<HighSalaryCourses> createState() => MyHighSalaryCoursesListState();
}

class MyHighSalaryCoursesListState extends State<HighSalaryCourses> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> HighSalaryCoursesList = [
    {
      "title": "Machine Learning Engineer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {
      "title": "Salesforce Technical Architect",
      "avgSalary": "Avg Salary: ₹18-40 LPA"
    },
    {"title": "SAP Consultant", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Cloud Solutions Architect",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Software Development Manager",
      "avgSalary": "Avg Salary: ₹15-50+ LPA"
    },
    {"title": "Java Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Python Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "DevOps Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Data Scientist", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Cybersecurity Specialist", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Cloud Security Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "AI Research Scientist", "avgSalary": "Avg Salary: ₹8-30 LPA"},
    {
      "title": "SAP Technical Consultant",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {"title": "Blockchain Developer", "avgSalary": "Avg Salary: ₹6-25 LPA"},
    {
      "title": "Machine Learning Engineer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
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
      "title": "Software Development Engineer in Test (SDET)",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Big Data Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Project Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Linux System Administrator",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Virtual Reality (VR) Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {
      "title": "Embedded Systems Engineer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "IT Security Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Software Quality Assurance (QA) Manager",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "AI Ethics Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Cloud DevOps Engineer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Business Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "3D Printing Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IoT Solutions Architect", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "IT Compliance Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {
      "title": "E-commerce Solutions Developer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {
      "title": "Quantum Computing Researcher",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
    {"title": "Data Privacy Officer", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {
      "title": "AR (Augmented Reality) Developer",
      "avgSalary": "Avg Salary: ₹8-25 LPA"
    },
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
    {"title": "IT Operations Manager", "avgSalary": "Avg Salary: ₹10-30 LPA"}
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
              final profession = HighSalaryCoursesList[index];
              return GestureDetector(
                onTap: () {
                  // Handle onTap event
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
              );
            },
            itemCount: HighSalaryCoursesList.length,
          ),
        ),
      ),
    );
  }
}
