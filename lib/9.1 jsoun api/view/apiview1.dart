import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class JsonParsing extends StatelessWidget {
  const JsonParsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API '),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ApiService.users.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(ApiService.users[index]["title"]),
          subtitle: Text(ApiService.users[index]['body']),
        ),
      ),
    );
  }
}

class ApiService {
  String api = 'https://jsonplaceholder.typicode.com/posts';


  static List users = [];

  Future<String?> apiCalling() async {
    Uri url = Uri.parse(api);
    Response response = await http.get(url);

    List user = jsonDecode(response.body);
    users = user;
    print(users[0]);
    return null;
  }

  ApiService() {
    apiCalling();
  }
}
