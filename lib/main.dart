import 'package:flutter/material.dart';

import '1stscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
        theme:ThemeData(
        scaffoldBackgroundColor: const Color(0xFF80CBC4),
        primarySwatch: Colors.pink,
          ),
        home: firstScreen(),
    );
  }
}

