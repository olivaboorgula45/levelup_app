// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PartTimeJobsScreen extends StatefulWidget {
  const PartTimeJobsScreen({Key? key}) : super(key: key);

  @override
  State<PartTimeJobsScreen> createState() => _PartTimeJobsScreenState();
}

class _PartTimeJobsScreenState extends State<PartTimeJobsScreen> {
  final List<Map<String, String>> partTimeJobs = [
    {"website": "FlexJobs", "url": "https://www.flexjobs.com/"},
    {"website": "Skip The Drive", "url": "https://www.skipthedrive.com/"},
    {"website": "Inkwell", "url": "https://www.inkwell.com/"},
    {"website": "Upwork", "url": "https://www.upwork.com/"},
    {"website": "LocalSolo", "url": "https://localsolo.com/"},
    {"website": "Catalant", "url": "https://www.catalant.com/"},
    {"website": "Indeed", "url": "https://www.indeed.com/"},
    {"website": "JobScribe", "url": "https://jobscribe.com/"},
    {"website": "Adzuna", "url": "https://www.adzuna.com/"},
    {"website": "Snagajob", "url": "https://www.snagajob.com/"},
    {"website": "CoolWorks", "url": "https://www.coolworks.com/"},
    {"website": "CollegeGrad", "url": "https://www.collegegrad.com/"},
    {"website": "LinkedIn", "url": "https://www.linkedin.com/"},
    {"website": "Glassdoor", "url": "https://www.glassdoor.com/"},
    {"website": "Career Builder", "url": "https://www.careerbuilder.com/"},
    {"website": "SimplyHired", "url": "https://www.simplyhired.com/"},
    {"website": "ZipRecruiter", "url": "https://www.ziprecruiter.com/"},
    {"website": "Instawork", "url": "https://www.instawork.com/"},
    {"website": "TutorMe", "url": "https://www.tutorme.com/"},
    {"website": "Rover", "url": "https://www.rover.com/"},
    {"website": "Handshake", "url": "https://www.joinhandshake.com/"},
    {"website": "Gigster", "url": "https://www.gigster.com/"},
    {"website": "Amazon Flex", "url": "https://flex.amazon.com/"},
    {"website": "Wonolo", "url": "https://www.wonolo.com/"},
    {"website": "Craigslist", "url": "https://www.craigslist.org/"},
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
            itemCount: partTimeJobs.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(partTimeJobs[index]['url']!);
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
                          partTimeJobs[index]['website']!,
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
