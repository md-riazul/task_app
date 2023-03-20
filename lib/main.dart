import 'package:flutter/material.dart';
import 'package:task_app/activity_page.dart';
import 'package:task_app/homepage2.dart';
import 'package:task_app/custom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomNavBar(),
    );
  }
}
