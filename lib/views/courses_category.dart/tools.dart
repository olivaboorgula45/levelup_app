import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SoftwareTools extends StatefulWidget {
  @override
  State<SoftwareTools> createState() => MySoftwareToolsListState();
}

class MySoftwareToolsListState extends State<SoftwareTools> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> SoftwareTools = [
    {"title": "Salesforce Developer", "avgSalary": "Avg Salary: 6-15 LPA"},
    {
      "title": "Salesforce Administrator",
      "avgSalary": "Avg Salary: 4.5-10 LPA"
    },
    {"title": "Salesforce Consultant", "avgSalary": "Avg Salary: 8-18 LPA"},
    {"title": "Salesforce Architect", "avgSalary": "Avg Salary: 15-30 LPA+"},
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
    {"title": "RPA Developer/Programmer", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "RPA Architect", "avgSalary": "Avg Salary: ₹8-20 LPA"},
    {"title": "RPA Business Analyst", "avgSalary": "Avg Salary: ₹6-14 LPA"},
    {"title": "RPA Project Manager", "avgSalary": "Avg Salary: ₹10-20 LPA"},
    {"title": "RPA Consultant", "avgSalary": "Avg Salary: ₹8-18 LPA"},
    {"title": "RPA Solution Architect", "avgSalary": "Avg Salary: ₹10-22 LPA"},
    {
      "title": "RPA Quality Analyst/Tester",
      "avgSalary": "Avg Salary: ₹5-12 LPA"
    },
    {"title": "RPA Support Engineer", "avgSalary": "Avg Salary: ₹4.5-10 LPA"},
    {"title": "RPA Trainer", "avgSalary": "Avg Salary: ₹6-15 LPA"},
    {"title": "RPA Operations Manager", "avgSalary": "Avg Salary: ₹12-25 LPA"},
    {"title": "RPA Compliance Analyst", "avgSalary": "Avg Salary: ₹7-15 LPA"},
    {
      "title": "Cognitive Automation Developer",
      "avgSalary": "Avg Salary: ₹8-18 LPA"
    },
    {
      "title": "Automation Anywhere Developer",
      "avgSalary": "Avg Salary: ₹4.5-12 LPA"
    },
    {"title": "UiPath Developer", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "SAP ERP", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP FI", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP CO", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP MM", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP SD", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP PP", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP CRM", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP SCM", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP HCM", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP HR", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP BI", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP BW", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP PLM", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP SRM", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP EP", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP NetWeaver", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP Fiori", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP APO", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP PM", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP PS", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP QM", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP WM", "avgSalary": "Avg Salary: 6-20 LPA"},
    {"title": "SAP IS", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP EWM", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP GRC", "avgSalary": "Avg Salary: 8-25 LPA"},
    {"title": "SAP MDG", "avgSalary": "Avg Salary: 8-25 LPA"},
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
              final profession = SoftwareTools[index];
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
            itemCount: SoftwareTools.length,
          ),
        ),
      ),
    );
  }
}
