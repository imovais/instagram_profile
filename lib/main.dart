// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.dark(useMaterial3: true),
      //theme: ThemeData(primarySwatch: Col),
      home: InstagramProfile(),
    );
  }
}
