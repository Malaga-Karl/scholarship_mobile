import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/screens/Pages.dart';
import 'package:scholarhip_mobile/screens/HomePage.dart';
import 'package:scholarhip_mobile/screens/LoginPage.dart';
import 'package:scholarhip_mobile/screens/SpecificFoundation.dart'; // Import FoundationDetail screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Microsoft',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/pages': (context) => NavigationExample(),
      },
    );
  }
}
