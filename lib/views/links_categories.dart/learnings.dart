// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningPortalsScreen extends StatefulWidget {
  const LearningPortalsScreen({Key? key}) : super(key: key);

  @override
  State<LearningPortalsScreen> createState() => _LearningPortalsScreenState();
}

class _LearningPortalsScreenState extends State<LearningPortalsScreen> {
  final List<Map<String, String>> learningPortals = [
    {"website": "Coursera", "url": "https://www.coursera.org/"},
    {"website": "edX", "url": "https://www.edx.org/"},
    {"website": "Udemy", "url": "https://www.udemy.com/"},
    {"website": "Skillshare", "url": "https://www.skillshare.com/"},
    {
      "website": "LinkedIn Learning",
      "url": "https://www.linkedin.com/learning/"
    },
    {"website": "Khan Academy", "url": "https://www.khanacademy.org/"},
    {"website": "Edureka", "url": "https://www.edureka.co/"},
    {"website": "Great Learning", "url": "https://www.greatlearning.in/"},
    {"website": "Canvas", "url": "https://www.instructure.com/canvas/"},
    {"website": "Podia", "url": "https://www.podia.com/"},
    {"website": "Thinkific", "url": "https://www.thinkific.com/"},
    {"website": "SWAYAM", "url": "https://www.swayam.gov.in/"},
    {"website": "DataCamp", "url": "https://www.datacamp.com/"},
    {"website": "Udacity", "url": "https://www.udacity.com/"},
    {"website": "Simplilearn", "url": "https://www.simplilearn.com/"},
    {"website": "Intellipaat", "url": "https://intellipaat.com/"},
    {"website": "free Code Camp", "url": "https://www.freecodecamp.org/"},
    {"website": "Springboard", "url": "https://www.springboard.com/"},
    {"website": "360Learning", "url": "https://360learning.com/"},
    {"website": "Code cademy", "url": "https://www.codecademy.com/"},
    {"website": "Teachable", "url": "https://teachable.com/"},
    {"website": "BYJU'S", "url": "https://byjus.com/"},
    {"website": "Akash", "url": "https://www.akash.ac.in/"},
    {"website": "Unacademy", "url": "https://unacademy.com/"},
    {"website": "Kajabi", "url": "https://kajabi.com/"},
    {
      "website": "LinkedIn Learning",
      "url": "https://www.linkedin.com/learning/"
    },
    {"website": "Stanford Online", "url": "https://online.stanford.edu/"},
    {"website": "IIT BombayX", "url": "https://www.iitbombayx.in/"},
    {
      "website": "IBM Training and Skills",
      "url": "https://www.ibm.com/training"
    },
    {"website": "FutureLearn", "url": "https://www.futurelearn.com/"},
    {"website": "Jooble", "url": "https://jooble.org/"}
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
            colors: [
              Colors.black,
              Color.fromARGB(255, 3, 12, 65),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: learningPortals.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(learningPortals[index]['url']!);
                },
                child: Card(
                  elevation: 3,
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  color: Colors.black,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: Text(
                          learningPortals[index]['website']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
