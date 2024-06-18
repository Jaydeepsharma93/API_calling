import 'package:flutter/material.dart';

import '9.1 jsoun api/view/apiview1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParsing(),
    );
  }
}
