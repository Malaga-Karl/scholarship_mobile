import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/models/Mail.dart'; // Import Mail model
import 'package:scholarhip_mobile/data/mailData.dart';

import '../colors.dart'; // Import Mail data

class SpecificMail extends StatelessWidget {
  final String id;

  SpecificMail({required this.id});

  @override
  Widget build(BuildContext context) {
    final mail = MailData().mailList.firstWhere((mail) => mail.id == id);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomColors().blue
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(mail.subject, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white), textAlign: TextAlign.center,),
              )
            ),
            SizedBox(height: 32),
            Text("From: ${mail.sender.name} <${mail.sender.email}>", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("To: ${mail.receiver.name} <${mail.receiver.email}>", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("Sent: ${mail.sentTime}", style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(mail.body, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text("Delete")),
                TextButton(onPressed: (){}, child: Text("Reply"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
