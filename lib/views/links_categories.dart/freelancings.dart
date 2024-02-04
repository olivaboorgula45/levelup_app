// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FreelancingPortalsScreen extends StatefulWidget {
  const FreelancingPortalsScreen({Key? key}) : super(key: key);

  @override
  State<FreelancingPortalsScreen> createState() =>
      _FreelancingPortalsScreenState();
}

class _FreelancingPortalsScreenState extends State<FreelancingPortalsScreen> {
  final List<Map<String, String>> freelancingPortals = [
    {"website": "Upwork", "url": "https://www.upwork.com/"},
    {"website": "Fiverr", "url": "https://www.fiverr.com/"},
    {"website": "Freelancer", "url": "https://www.freelancer.com/"},
    {"website": "People Per Hour", "url": "https://www.peopleperhour.com/"},
    {"website": "Toptal", "url": "https://www.toptal.com/"},
    {"website": "FlexJobs", "url": "https://www.flexjobs.com/"},
    {"website": "LinkedIn", "url": "https://www.linkedin.com/"},
    {"website": "99designs", "url": "https://99designs.com/"},
    {"website": "Solid Gigs", "url": "https://solidgigs.com/"},
    {"website": "Codeable", "url": "https://codeable.io/"},
    {"website": "Dooly", "url": "https://dooly.ai/"},
    {"website": "Unbounce", "url": "https://unbounce.com/"},
    {"website": "Dribbble", "url": "https://dribbble.com/"},
    {"website": "SimplyHired", "url": "https://www.simplyhired.com/"},
    {
      "website": "Freelance Writing",
      "url": "https://www.freelancewriting.com/"
    },
    {"website": "We Work Remotely", "url": "https://weworkremotely.com/"},
    {"website": "Truelancer", "url": "https://www.truelancer.com/"},
    {"website": "Working Nomads", "url": "https://www.workingnomads.co/"},
    {"website": "Design Crowd", "url": "https://www.designcrowd.com/"},
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
            itemCount: freelancingPortals.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(freelancingPortals[index]['url']!);
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
                          freelancingPortals[index]['website']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
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
