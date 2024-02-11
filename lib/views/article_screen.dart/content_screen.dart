import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/functions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArticleScreen extends StatefulWidget {
  final String courseName;

  const ArticleScreen({
    super.key,
    required this.courseName,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List saved = [];
  String generatedArticle = '';
  bool showCPI = false;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      setState(() {
        saved = value.getStringList('data') ?? [];
      });
    });

    try {
      setState(() {
        showCPI = true;
      });
      generateContent(widget.courseName).then((value) {
        if (value.statusCode == 200) {
          setState(() {
            generatedArticle = json.decode(value.body)['candidates'][0]
                ['content']['parts'][0]['text'];
            showCPI = false;
          });
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error')));
        }
        setState(() {
          showCPI = false;
        });
      });
    } catch (e) {
      setState(() {
        showCPI = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.courseName),
        actions: [
          IconButton(
              onPressed: () {
                SharedPreferences.getInstance().then((value) {
                  List<String> current = value.getStringList('data') ?? [];
                  if (current.contains(widget.courseName)) {
                    current.remove(widget.courseName);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Course Unsaved')));
                  } else {
                    current.add(widget.courseName);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Course Saved')));
                  }
                  value.setStringList('data', current);
                  setState(() {
                    saved = current;
                  });
                });
              },
              icon: Icon(saved.contains(widget.courseName)
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_outline_rounded))
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (!showCPI)
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: SingleChildScrollView(child: Text(generatedArticle)),
            ),
          if (showCPI)
            Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Just wait few seconds. Article is generating')
                  ],
                )))
        ],
      ),
    );
  }
}
