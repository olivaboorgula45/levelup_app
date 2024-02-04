
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/open_ai_services.dart';
import 'package:flutter_application_1/views/article_screen.dart/content_screen.dart';
import 'package:get/get.dart';

class DemandedCourse extends StatefulWidget {
  const DemandedCourse({super.key});

  @override
  State<DemandedCourse> createState() => _DemandedCourseState();
}

class _DemandedCourseState extends State<DemandedCourse> {
  final List<Map<String, dynamic>> demandedCourses = [
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Software Developer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Data Scientist", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "AI Engineer", "avgSalary": "Avg Salary: ₹7-20 LPA"},
    {"title": "Salesforce Developer", "avgSalary": "Avg Salary: 6-15 LPA"},
    {
      "title": "Salesforce Administrator",
      "avgSalary": "Avg Salary: 4.5-10 LPA"
    },
    {"title": "Salesforce Consultant", "avgSalary": "Avg Salary: 8-18 LPA"},
    {"title": "Salesforce Architect", "avgSalary": "Avg Salary: 15-30 LPA+"},
    {
      "title": "Cloud Computing Specialist",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Cybersecurity Analyst", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Full Stack Developer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "DevOps Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Mobile App Developer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "UI/UX Designer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Salesforce Analyst", "avgSalary": "Avg Salary: 5-12 LPA"},
    {
      "title": "Salesforce Project Manager",
      "avgSalary": "Avg Salary: 10-20 LPA+"
    },
    {"title": "Salesforce QA Engineer", "avgSalary": "Avg Salary: 5-12 LPA"},
    {
      "title": "Salesforce Marketing Cloud Specialist",
      "avgSalary": "Avg Salary: 8-18 LPA"
    },
    {
      "title": "Salesforce Sales Representative",
      "avgSalary": "Avg Salary: 6-20 LPA+"
    },
    {"title": "Blockchain Developer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "System Administrator", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Network Engineer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Database Administrator", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Data Engineer", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "IT Project Manager", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "SAP S/4HANA Consultant", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP Fiori Developer", "avgSalary": "Avg Salary: 6-20 LPA"},
    {
      "title": "SAP Success Factors Consultant",
      "avgSalary": "Avg Salary: 8-25 LPA"
    },
    {
      "title": "Salesforce Customer Success Manager",
      "avgSalary": "Avg Salary: 8-15 LPA+"
    },
    {"title": "Salesforce Data Analyst", "avgSalary": "Avg Salary: 5-12 LPA"},
    {"title": "Salesforce Trainer", "avgSalary": "Avg Salary: 6-12 LPA"},
    {
      "title": "Salesforce Solution Engineer",
      "avgSalary": "Avg Salary: 8-18 LPA"
    },
    {
      "title": "Salesforce Technical Architect",
      "avgSalary": "Avg Salary: 18-40 LPA+"
    },
    {
      "title": "Salesforce Support Specialist",
      "avgSalary": "Avg Salary: 5-12 LPA"
    },
    {"title": "SAP Ariba Consultant", "avgSalary": "Avg Salary: 8-25 LPA"},
    {
      "title": "SAP Business Objects BI Developer",
      "avgSalary": "Avg Salary: 6-20 LPA"
    },
    {
      "title": "SAP Analytics Cloud Developer",
      "avgSalary": "Avg Salary: 8-25 LPA"
    },
    {
      "title": "SAP Cloud Platform Developer",
      "avgSalary": "Avg Salary: 8-25 LPA"
    },
    {"title": "SAP Leonardo Consultant", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "QA Engineer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {
      "title": "Business Intelligence Analyst",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Robotics Engineer", "avgSalary": "Avg Salary: ₹7-20 LPA"},
    {
      "title": "Embedded Systems Engineer",
      "avgSalary": "Avg Salary: ₹6-18 LPA"
    },
    {"title": "Game Developer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {
      "title": "Digital Marketing Specialist",
      "avgSalary": "Avg Salary: ₹4-12 LPA"
    },
    {"title": "Content Writer", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {
      "title": "Sales and Business Development Manager",
      "avgSalary": "Avg Salary: ₹6-20 LPA"
    },
    {"title": "Human Resources Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Financial Analyst", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Medical Professionals", "avgSalary": "Avg Salary: ₹6-30 LPA"},
    {
      "title": "Logistics and Supply Chain Manager",
      "avgSalary": "Avg Salary: ₹6-20 LPA"
    },
    {"title": "Market Research Analyst", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Management Consultant", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Operations Manager", "avgSalary": "Avg Salary: ₹8-25 LPA"},
    {"title": "Environmental Engineer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Event Planner", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {
      "title": "Public Relations (PR) Specialist",
      "avgSalary": "Avg Salary: ₹5-15 LPA"
    },
    {"title": "Legal Consultant", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Real Estate Manager", "avgSalary": "Avg Salary: ₹6-20 LPA"},
    {"title": "Education Consultant", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Graphic Designer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Interior Designer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Nutritionist", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "Biomedical Engineer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
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
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              final course = demandedCourses[index];
              return GestureDetector(
                onTap: () async {
                  try {
                    final generatedArticle =
                        await OpenAIService.generateArticle(course['title']);
                    Get.to(() => ArticleScreen(
                          courseName: course['title'],
                          generatedArticle: generatedArticle,
                        ));
                  } catch (e) {
                    // Handle error
                    // Optionally show a snackbar or alert dialog
                  }
                },
                child: Card(
                  
                  elevation: 3,
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                          color: Colors.grey,
                          width: 1.0) // Optional: Add rounded corners
                      ),
                  color: Colors.black,
                  child: Center(
                    child: ListTile(
                      title: Text(course['title'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white70,
                          )),
                      subtitle: Text(
                        course['avgSalary'],
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: demandedCourses.length,
          ),
        ),
      ),
    );
  }
}
