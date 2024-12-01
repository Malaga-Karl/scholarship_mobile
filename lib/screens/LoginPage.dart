import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PLM Scholarship System'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.6,
                  image: AssetImage('assets/plmLogo.jpg'),
                  fit: BoxFit.cover
                  ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 200),
                child: Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        
                        onPressed: () {
                          // Add your login logic here
                        },
                        child: Text('Login with Microsoft'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    'PLM Scholarship System',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'The PLM Scholarship System is a web-based platform of the Resource Generation Office for Pamantasan ng Lungsod ng Maynila that streamlines scholarship applications. Students can apply online, track their status, and stay updated on opportunities, promoting efficiency and supporting academic growth through accessible technology.',
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Center(
                      child: Text(
                        'Copyright © 2024 Pamantasan ng Lungsod ng Maynila. All Rights Reserved.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                    ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
