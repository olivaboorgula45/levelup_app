import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MBAJobs extends StatefulWidget {
  @override
  State<MBAJobs> createState() => MyMBAJobsListState();
}

class MyMBAJobsListState extends State<MBAJobs> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> MBAJobs = [
    {"title": "Business Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "Operations Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "General Manager", "avgSalary": "Avg Salary: ₹15-35 LPA"},
    {
      "title": "Chief Operating Officer (COO)",
      "avgSalary": "Avg Salary: ₹20-50 LPA"
    },
    {"title": "Financial Analyst", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {"title": "Investment Banker", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {"title": "Financial Manager", "avgSalary": "Avg Salary: ₹12-35 LPA"},
    {
      "title": "Chief Financial Officer (CFO)",
      "avgSalary": "Avg Salary: ₹25-75 LPA"
    },
    {"title": "Marketing Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "Brand Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Product Manager", "avgSalary": "Avg Salary: ₹12-30 LPA"},
    {
      "title": "Digital Marketing Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "HR Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {
      "title": "Talent Acquisition Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {
      "title": "Compensation and Benefits Manager",
      "avgSalary": "Avg Salary: ₹12-30 LPA"
    },
    {"title": "HR Business Partner", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Management Consultant", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {"title": "Strategy Consultant", "avgSalary": "Avg Salary: ₹12-35 LPA"},
    {"title": "Business Analyst", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {"title": "IT Consultant", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "Supply Chain Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {
      "title": "Operations Manager (Logistics)",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "Logistics Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "IT Manager", "avgSalary": "Avg Salary: ₹12-35 LPA"},
    {"title": "Project Manager (IT)", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {
      "title": "Chief Information Officer (CIO)",
      "avgSalary": "Avg Salary: ₹20-60 LPA"
    },
    {"title": "Hospital Administrator", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Healthcare Consultant", "avgSalary": "Avg Salary: ₹10-30 LPA"},
    {
      "title": "Healthcare Operations Manager",
      "avgSalary": "Avg Salary: ₹12-35 LPA"
    },
    {
      "title": "International Business Development Manager",
      "avgSalary": "Avg Salary: ₹12-35 LPA"
    },
    {"title": "Export Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {
      "title": "International Marketing Manager",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Retail Operations Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "Merchandising Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {
      "title": "Retail Marketing Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {
      "title": "Program Manager (Nonprofit)",
      "avgSalary": "Avg Salary: ₹8-20 LPA"
    },
    {
      "title": "Social Impact Consultant",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "NGO Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {
      "title": "Real Estate Development Manager",
      "avgSalary": "Avg Salary: ₹12-35 LPA"
    },
    {"title": "Property Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "Real Estate Analyst", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {
      "title": "Technology Product Manager",
      "avgSalary": "Avg Salary: ₹12-35 LPA"
    },
    {
      "title": "Technology Strategy Manager",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Chief Technology Officer (CTO)",
      "avgSalary": "Avg Salary: ₹20-60 LPA"
    },
    {
      "title": "Corporate Strategy Manager",
      "avgSalary": "Avg Salary: ₹12-35 LPA"
    },
    {
      "title": "Strategic Planning Manager",
      "avgSalary": "Avg Salary: ₹10-30 LPA"
    },
    {
      "title": "Business Development Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "Project Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Program Manager", "avgSalary": "Avg Salary: ₹12-35 LPA"},
    {"title": "Portfolio Manager", "avgSalary": "Avg Salary: ₹15-40 LPA"},
    {"title": "E-commerce Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Online Retail Manager", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "Energy Consultant", "avgSalary": "Avg Salary: ₹12-30 LPA"},
    {
      "title": "Renewable Energy Project Manager",
      "avgSalary": "Avg Salary: ₹15-40 LPA"
    },
    {
      "title": "Government Relations Manager",
      "avgSalary": "Avg Salary: ₹12-30 LPA"
    },
    {"title": "Policy Analyst", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Public Affairs Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {"title": "Sales Manager", "avgSalary": "Avg Salary: ₹10-25 LPA"},
    {
      "title": "Business Development Manager",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
    },
    {"title": "Risk Analyst", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {
      "title": "Risk Management Consultant",
      "avgSalary": "Avg Salary: ₹10-25 LPA"
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
              final profession = MBAJobs[index];
              return GestureDetector(
                onTap: () {},
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
            itemCount: MBAJobs.length,
          ),
        ),
      ),
    );
  }
}
