import 'package:flutter/material.dart';

import '../colors.dart';

class CreateMailPage extends StatelessWidget {
  final VoidCallback onMailCancelled;

  const CreateMailPage({super.key, required this.onMailCancelled});

  @override
  Widget build(BuildContext context) {

    TextEditingController ccController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Mail'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: onMailCancelled,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
                children: [
                  Row(
                    children: [
                      Text("To: "),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(text: "rgoadmin1@plm.edu.ph"),
                          enabled: false,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Cc: "),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: ccController,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter a Subject"
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    maxLines: 17,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write mail. No richtext 😠"
                    ),
                  ),
                  SizedBox(height: 8,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: Text("Send"),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStateProperty.all<Color>(CustomColors().gold),
                      ),
                    ),
                  )
                ],
              ),
      )

    );
  }
}
