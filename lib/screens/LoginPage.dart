import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your login logic here
            Navigator.pushNamed(context, '/home');
          },
          child: Text('Login with Microsoft'),
        ),
      ),
    );
  }
}
