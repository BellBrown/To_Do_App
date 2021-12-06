import 'package:flutter/material.dart';
import 'package:todoapp/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        primarySwatch: Colors.blue,
      ),
      //the homeview()is a class in home_view.dart
      home: const HomeView()
    );
  }
}

