import 'package:flutter/material.dart';
import 'package:flutter_sliver_1/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.indigo))
      ),
    );
  }
}
