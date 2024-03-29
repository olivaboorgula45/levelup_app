import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JobPortalScreen extends StatefulWidget {
  const JobPortalScreen({Key? key}) : super(key: key);

  @override
  State<JobPortalScreen> createState() => _JobPortalScreenState();
}

class _JobPortalScreenState extends State<JobPortalScreen> {
  final List<Map<String, String>> jobPortals = [
    {"website": "LinkedIn ", "url": "https://www.linkedin.com/jobs/"},
    {"website": "Glassdoor", "url": "https://www.glassdoor.com/index.htm"},
    {"website": "Indeed", "url": "https://www.indeed.com/"},
    {"website": "Shine", "url": "https://www.shine.com/"},
    {"website": "TimesJobs", "url": "https://www.timesjobs.com/"},
    {"website": "Upwork", "url": "https://www.upwork.com/"},
    {"website": "Hirect", "url": "https://hirect.in/"},
    {"website": "Monster", "url": "https://www.monsterindia.com/"},
    {"website": "Google Job Search", "url": "https://jobs.google.com/"},
    {"website": "Apna", "url": "https://apna.co/"},
    {"website": "Quikr", "url": "https://www.quikr.com/jobs"},
    {"website": "Work India", "url": "https://www.workindia.in/"},
    {"website": "FoundIt", "url": "https://www.foundit.in/"},
    {"website": "Freshers World", "url": "https://www.freshersworld.com/"},
    {"website": "JobsForHer", "url": "https://www.jobsforher.com/"},
    {"website": "CutShort", "url": "https://www.cutshort.io/"},
    {"website": "JobSora", "url": "https://www.jobsora.com/"}
    // Add more job portals as needed
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
            itemCount: jobPortals.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(jobPortals[index]['url']!);
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
                          jobPortals[index]['website']!,
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
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
