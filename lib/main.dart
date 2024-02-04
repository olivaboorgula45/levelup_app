// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/main_functions.dart/bottom_nav_bar.dart';
import 'package:flutter_application_1/views/main_functions.dart/home_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LevelUp());
}

class LevelUp extends StatelessWidget {
  const LevelUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     title:'Level Up',
     theme: ThemeData(primarySwatch: Colors.blue,
     useMaterial3: true,
     ),
     home:  const BottomNavBar (),
    );
  }
}