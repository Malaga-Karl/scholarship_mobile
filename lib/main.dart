import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/screens/Pages.dart';

import 'screens/HomePage.dart';
import 'screens/LoginPage.dart';

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
        '/pagez': (context) => NavigationExample(),
      },
    );
  }
}
