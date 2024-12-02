import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/models/mail.dart';
import '../colors.dart';

class CreateReplyPage extends StatelessWidget {
  final Mail mail;
  final VoidCallback onReplyCancelled;

  CreateReplyPage({required this.mail, required this.onReplyCancelled});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reply to ${mail.sender.name}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: onReplyCancelled,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("From: ${mail.receiver.name} <${mail.receiver.email}>", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("To: ${mail.sender.name} <${mail.sender.email}>", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Subject',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: 'Re: ${mail.subject}'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Body',
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
                expands: true,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: onReplyCancelled,
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle send reply logic here
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
