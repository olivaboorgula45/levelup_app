import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CloudComputing extends StatefulWidget {
  @override
  State<CloudComputing> createState() => MyCloudComputingListState();
}

class MyCloudComputingListState extends State<CloudComputing> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> CloudComputing = [
    {
      "title": "Cloud Solutions Architect",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {"title": "Cloud Engineer", "avgSalary": "Avg Salary: ₹8-18 LPA"},
    {"title": "Cloud Administrator", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {"title": "Cloud DevOps Engineer", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {"title": "Cloud Security Engineer", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {"title": "Cloud Network Engineer", "avgSalary": "Avg Salary: ₹8-18 LPA"},
    {
      "title": "Cloud Systems Administrator",
      "avgSalary": "Avg Salary: ₹6-15 LPA"
    },
    {"title": "Cloud Support Engineer", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {"title": "Cloud Consultant", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {"title": "Cloud Project Manager", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {"title": "Cloud Product Manager", "avgSalary": "Avg Salary: ₹15-30 LPA"},
    {"title": "Cloud Data Engineer", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {
      "title": "Cloud Database Administrator",
      "avgSalary": "Avg Salary: ₹8-18 LPA"
    },
    {"title": "Cloud Database Developer", "avgSalary": "Avg Salary: ₹8-18 LPA"},
    {
      "title": "Cloud Database Architect",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {"title": "Cloud Database Manager", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {"title": "Cloud Database Analyst", "avgSalary": "Avg Salary: ₹8-15 LPA"},
    {"title": "Cloud Storage Engineer", "avgSalary": "Avg Salary: ₹8-18 LPA"},
    {
      "title": "Cloud Backup Administrator",
      "avgSalary": "Avg Salary: ₹8-15 LPA"
    },
    {
      "title": "Cloud Migration Specialist",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Integration Engineer",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Automation Engineer",
      "avgSalary": "Avg Salary: ₹10-18 LPA"
    },
    {
      "title": "Cloud DevSecOps Engineer",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {
      "title": "Cloud Compliance Analyst",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Governance Specialist",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {
      "title": "Cloud Performance Engineer",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Monitoring Specialist",
      "avgSalary": "Avg Salary: ₹8-15 LPA"
    },
    {"title": "Cloud AI Engineer", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {
      "title": "Cloud Machine Learning Engineer",
      "avgSalary": "Avg Salary: ₹15-30 LPA"
    },
    {"title": "Cloud Data Scientist", "avgSalary": "Avg Salary: ₹15-30 LPA"},
    {
      "title": "Cloud Business Intelligence Analyst",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Analytics Engineer",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {"title": "Cloud Big Data Engineer", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {
      "title": "Cloud Hadoop Administrator",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {"title": "Cloud IoT Engineer", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {
      "title": "Cloud Blockchain Developer",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {
      "title": "Cloud Virtualization Engineer",
      "avgSalary": "Avg Salary: ₹10-20 LPA"
    },
    {
      "title": "Cloud Desktop Support Specialist",
      "avgSalary": "Avg Salary: ₹6-12 LPA"
    },
    {"title": "Cloud Technical Trainer", "avgSalary": "Avg Salary: ₹8-15 LPA"},
    {
      "title": "Cloud Customer Success Manager",
      "avgSalary": "Avg Salary: ₹15-30 LPA"
    },
    {"title": "Cloud Sales Engineer", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {"title": "Cloud Account Manager", "avgSalary": "Avg Salary: ₹15-30 LPA"},
    {"title": "Cloud Vendor Manager", "avgSalary": "Avg Salary: ₹15-30 LPA"},
    {
      "title": "Cloud Contracts Specialist",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {"title": "Cloud Cost Analyst", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {"title": "Cloud Financial Analyst", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {"title": "Cloud UX/UI Designer", "avgSalary": "Avg Salary: ₹8-15 LPA"},
    {"title": "Cloud Technical Writer", "avgSalary": "Avg Salary: ₹8-15 LPA"},
    {
      "title": "Cloud Quality Assurance Engineer",
      "avgSalary": "Avg Salary: ₹8-18 LPA"
    },
    {
      "title": "Cloud Compliance Officer",
      "avgSalary": "Avg Salary: ₹12-25 LPA"
    },
    {"title": "Nonprofit Manager", "avgSalary": "Avg Salary: ₹5-15 LPA"}
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
              final profession = CloudComputing[index];
              return GestureDetector(
                onTap: () {
                  // Your onTap logic here
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
            itemCount: CloudComputing.length,
          ),
        ),
      ),
    );
  }
}
