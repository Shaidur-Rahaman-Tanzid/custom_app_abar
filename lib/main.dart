
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'home.dart';
import 'home_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeTwo(),
    );
  }
}
