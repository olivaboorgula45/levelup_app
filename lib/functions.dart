import 'dart:convert';

import 'package:flutter_application_1/constants/secret_apikeys.dart';
import 'package:http/http.dart' as http;

Future<http.Response> generateContent(String job) async {
  final url =
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
generate the following feilds related to $job:
1. introduction
2. salaries
3. scope
4. how to learn
5. interview tips
6. interview questions
7. resume tips
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
