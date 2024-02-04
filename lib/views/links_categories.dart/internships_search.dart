import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InternshipPortalsScreen extends StatefulWidget {
  const InternshipPortalsScreen({Key? key}) : super(key: key);

  @override
  State<InternshipPortalsScreen> createState() =>
      _InternshipPortalsScreenState();
}

class _InternshipPortalsScreenState extends State<InternshipPortalsScreen> {
  final List<Map<String, String>> internshipPortals = [
    {"website": "Internshala", "url": "https://internshala.com/"},
    {"website": "Lets Intern", "url": "https://www.letsintern.com/"},
    {"website": "Hello Intern", "url": "https://www.hellointern.com/"},
    {"website": "Twenty19", "url": "https://www.twenty19.com/"},
    {"website": "Switch Idea", "url": "https://www.switchidea.com/"},
    {"website": "Intern Theory", "url": "https://www.interntheory.com/"},
    {"website": "Skillenza", "url": "https://skillenza.com/"},
    {"website": "Youth4Work", "url": "https://www.youth4work.com/"},
    {"website": "Indeed", "url": "https://www.indeed.com/"},
    {"website": "LinkedIn", "url": "https://www.linkedin.com/"},
    {"website": "KillerLaunch", "url": "https://www.killerlaunch.com/"},
    {"website": "Naukri", "url": "https://www.naukri.com/"},
    {"website": "Shine", "url": "https://www.shine.com/"},
    {"website": "Monster", "url": "https://www.monsterindia.com/"},
    {"website": "Glassdoor", "url": "https://www.glassdoor.com/"},
    {"website": "WayUp", "url": "https://www.wayup.com/"},
    {"website": "SimplyHired", "url": "https://www.simplyhired.com/"},
    {"website": "HackerRank", "url": "https://www.hackerrank.com/"}
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
            itemCount: internshipPortals.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _launchURL(internshipPortals[index]['url']!);
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
                          internshipPortals[index]['website']!,
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
