import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProgrammingLanguages extends StatefulWidget {
  @override
  State<ProgrammingLanguages> createState() =>
      MyProgrammingLanguagesListState();
}

class MyProgrammingLanguagesListState extends State<ProgrammingLanguages> {
  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> ProgrammingLanguages = [
    {"title": "Flutter", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Python", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "JavaScript", "avgSalary": "Avg Salary: ₹3.5-10 LPA"},
    {"title": "Java", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "C#", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "C++", "avgSalary": "Avg Salary: ₹4.5-11 LPA"},
    {"title": "PHP", "avgSalary": "Avg Salary: ₹3-9 LPA"},
    {"title": "Ruby", "avgSalary": "Avg Salary: ₹3.5-10 LPA"},
    {"title": "Swift", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Kotlin", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "TypeScript", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "Go", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "Rust", "avgSalary": "Avg Salary: ₹6-18 LPA"},
    {"title": "Dart", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "Objective-C", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "R", "avgSalary": "Avg Salary: ₹4-12 LPA"},
    {"title": "MATLAB", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "Scala", "avgSalary": "Avg Salary: ₹5-14 LPA"},
    {"title": "Groovy", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "Bash", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "Perl", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "Lua", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "Julia", "avgSalary": "Avg Salary: ₹5-15 LPA"},
    {"title": "HTML/CSS", "avgSalary": "Avg Salary: ₹3-8 LPA"},
    {"title": "SQL", "avgSalary": "Avg Salary: ₹4-11 LPA"},
    {"title": "PL/SQL", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "T-SQL", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "Apex", "avgSalary": "Avg Salary: ₹5-14 LPA"},
    {"title": "Visual Basic", "avgSalary": "Avg Salary: ₹4-10 LPA"},
    {"title": "Cobol", "avgSalary": "Avg Salary: ₹4.5-12 LPA"},
    {"title": "Fortran", "avgSalary": "Avg Salary: ₹5-14 LPA"},
    {"title": "Django Developer", "avgSalary": "Avg Salary: ₹5-10 LPA"},
    {"title": "Flask Developer", "avgSalary": "Avg Salary: ₹4.5-9 LPA"},
    {"title": "React Developer", "avgSalary": "Avg Salary: ₹5.5-12 LPA"},
    {"title": "Angular Developer", "avgSalary": "Avg Salary: ₹5.5-12 LPA"},
    {"title": "Vue.js Developer", "avgSalary": "Avg Salary: ₹5-11 LPA"},
    {"title": "Spring Developer", "avgSalary": "Avg Salary: ₹6-13 LPA"},
    {"title": "Ruby on Rails Developer", "avgSalary": "Avg Salary: ₹5-10 LPA"},
    {"title": "Laravel Developer", "avgSalary": "Avg Salary: ₹5-10 LPA"},
    {"title": "Express.js Developer", "avgSalary": "Avg Salary: ₹5.5-12 LPA"},
    {"title": "ASP.NET Developer", "avgSalary": "Avg Salary: ₹5.5-13 LPA"},
    {"title": "Spring Boot Developer", "avgSalary": "Avg Salary: ₹6-14 LPA"},
    {
      "title": "Django REST Framework Developer",
      "avgSalary": "Avg Salary: ₹5.5-12 LPA"
    },
    {"title": "AngularJS Developer", "avgSalary": "Avg Salary: ₹5-10 LPA"},
    {"title": "Bootstrap Developer", "avgSalary": "Avg Salary: ₹4.5-9 LPA"},
    {"title": "Symfony Developer", "avgSalary": "Avg Salary: ₹5-10 LPA"},
    {"title": ".NET Core Developer", "avgSalary": "Avg Salary: ₹5.5-13 LPA"},
    {"title": "Play Framework Developer", "avgSalary": "Avg Salary: ₹6-13 LPA"},
    {"title": "Xamarin Developer", "avgSalary": "Avg Salary: ₹5.5-12 LPA"},
    {"title": "Ionic Developer", "avgSalary": "Avg Salary: ₹5-11 LPA"},
    {"title": "Electron Developer", "avgSalary": "Avg Salary: ₹5.5-12 LPA"},
    {"title": "Hibernate Developer", "avgSalary": "Avg Salary: ₹6-13 LPA"},
    {"title": "TensorFlow Developer", "avgSalary": "Avg Salary: ₹6.5-14 LPA"},
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
              final language = ProgrammingLanguages[index];
              return GestureDetector(
                onTap: () {
                  // Handle onTap action
                },
                child: Card(
                  elevation: 3,
                  margin: const EdgeInsets.fromLTRB(10, 25, 10, 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  color: Colors.black,
                  child: Center(
                    child: ListTile(
                      title: Text(language['title'],
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white70)),
                      subtitle: Text(language['avgSalary'],
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              );
            },
            itemCount: ProgrammingLanguages.length,
          ),
        ),
      ),
    );
  }
}
