import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/9.2%20Call%20Pixabay%20API%20&%20Represent%20in%20UI/view.dart';

import '9.2 Call Pixabay API & Represent in UI/provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ApiProvider(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiData(),
    );
  }
}
