import 'package:flutter/material.dart';

class NonItCourses extends StatefulWidget {
  const NonItCourses({super.key});

  @override
  State<NonItCourses> createState() => MyNonItCoursesListState();
}

class MyNonItCoursesListState extends State<NonItCourses> {
  final List<Map<String, dynamic>> professions = [
    {"title": "Pilot", "avgSalary": "Avg Salary: ₹10-50 LPA"},
    {"title": "Flight Attendant", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Air Traffic Controller", "avgSalary": "Avg Salary: ₹7-15 LPA"},
    {
      "title": "Aircraft Maintenance Engineer",
      "avgSalary": "Avg Salary: ₹5-15 LPA"
    },
    {"title": "Avionics Technician", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Hotel Manager", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Front Desk Agent", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Tour Guide", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Travel Consultant", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Event Planner", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Store Manager", "avgSalary": "Avg Salary: ₹4-15 LPA"},
    {"title": "Sales Associate", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Visual Merchandiser", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Retail Buyer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Loss Prevention Officer", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Supply Chain Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Logistics Coordinator", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Procurement Specialist", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {
      "title": "Inventory Control Manager",
      "avgSalary": "Avg Salary: ₹5-15 LPA"
    },
    {"title": "Distribution Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Travel Agent", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Tour Coordinator", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Cruise Director", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Travel Blogger", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Travel Photographer", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Financial Analyst", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Investment Banker", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Accountant", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Financial Planner", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Auditor", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Fitness Trainer", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Gym Manager", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Yoga Instructor", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Personal Trainer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Nutritionist", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Doctor", "avgSalary": "Avg Salary: ₹8-30 LPA"},
    {"title": "Nurse", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Medical Technologist", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Hospital Administrator", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Pharmacist", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Production Manager", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {
      "title": "Quality Control Inspector",
      "avgSalary": "Avg Salary: ₹4-12 LPA"
    },
    {"title": "Maintenance Technician", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Manufacturing Engineer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Process Engineer", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Teacher", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Professor", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "School Counselor", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Librarian", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "Educational Consultant", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Coach", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Sports Analyst", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Athletic Trainer", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Sports Marketing Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Sports Event Coordinator", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Sales Manager", "avgSalary": "Avg Salary: ₹5-20 LPA"},
    {"title": "Sales Representative", "avgSalary": "Avg Salary: ₹3-10 LPA"},
    {"title": "Account Executive", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {
      "title": "Business Development Manager",
      "avgSalary": "Avg Salary: ₹5-15 LPA"
    },
    {"title": "Retail Sales Manager", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Event Coordinator", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Market Research Analyst", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Social Media Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {
      "title": "Public Relations Specialist",
      "avgSalary": "Avg Salary: ₹4-12 LPA"
    },
    {"title": "Nonprofit Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"},
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
              final profession = professions[index];
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
            itemCount: professions.length,
          ),
        ),
      ),
    );
  }
}
