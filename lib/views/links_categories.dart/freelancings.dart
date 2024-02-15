// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/courses_data.dart';
import 'package:url_launcher/url_launcher.dart';

class FreelancingPortalsScreen extends StatefulWidget {
  const FreelancingPortalsScreen({Key? key}) : super(key: key);

  @override
  State<FreelancingPortalsScreen> createState() =>
      _FreelancingPortalsScreenState();
}

class _FreelancingPortalsScreenState extends State<FreelancingPortalsScreen> {
  final List<Map<String, String>> freelancingPortals =
      Data.freelancingPortals;

  final List<Gradient> cardGradients = [
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.grey.shade900, Colors.grey.shade900],
    ),
     
    // Add more gradients as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1.8,
          ),
          itemCount: freelancingPortals.length,
          itemBuilder: (context, index) {
            final gradient =
                cardGradients[index % cardGradients.length]; // Cycle through gradients

            return InkWell(
              onTap: () {
                launchUrl(Uri.parse(freelancingPortals[index]['url']!));
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: gradient,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        freelancingPortals[index]['title']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}
