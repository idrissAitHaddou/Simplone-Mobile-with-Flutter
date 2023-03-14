// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:test/pages/Breif.dart';
import 'package:test/pages/Home.dart';
import 'package:test/pages/Login.dart';
import 'package:test/pages/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/login' : (context) => Login(),
        '/dashboard' : (context) => Dashboard(),
      },
    );
  }
}

