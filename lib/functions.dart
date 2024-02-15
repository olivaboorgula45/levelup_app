import 'dart:convert';

import 'package:flutter_application_1/constants/secret_apikeys.dart';
import 'package:http/http.dart' as http;

Future<http.Response> generateContent(String job) async {
  const url =
      // ignore: unnecessary_brace_in_string_interps
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=${openAIAPIKey}';

  final headers = <String, String>{
    'Content-Type': 'application/json',
  };

  final data = {
    'contents': [
      {
        'parts': [
          {
            'text': '''
write article a about $job in english language only and also please use simple words.

highlight the headlines give some boldness
headlines = [
1. What is $job show me the brief "introduction".

2. "Future scope" of $job

3. "Job opportunities" for $job

4. "Roles and responsibilities" of $job

5. "Salaries" of $job in india. Fresher to experience candidates give me this in points wise.

6. Give me "Top 15 companies hire". line by line with serial numbers

7. "How to learn" and where a fresher can learn

8. "skills required" for getting a job. Give me line by line

9. "How to get job" and job searching methods.give me each tip in line by line 

10. "Interview tips". show me in line by line.

11. "Resume tips". show me in line by line with using of dots.

12. frequently asked "interview questions" 

13. "Roadmap" for $job
        ]


Above 13 are my prompts so please write article about $job.
''',
          },
        ],
      },
    ],
  };

  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: jsonEncode(data),
  );

  return response;
}
