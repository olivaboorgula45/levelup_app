import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/open_ai_services.dart';
import 'package:flutter_application_1/views/main_functions.dart/courses_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  final OpenAIService openAIService = OpenAIService();
  String? generatedContent;
  


  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            "Level Up",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.indigo,
              
            ),
          ),
        ),
        
        body:
         const CourseTabBar (),
         backgroundColor: Colors.black, // Add your CustomTabBar here
      ),
    );
  }
}

