import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/components/CustomBanner.dart';
import 'package:scholarhip_mobile/models/mail.dart';
import '../colors.dart';
import '../data/mailData.dart';

class ContactPage extends StatelessWidget {
  final VoidCallback onCreateMailPressed;
  final Function(String) onMailSelected;

  const ContactPage({super.key, required this.onCreateMailPressed, required this.onMailSelected});

  @override
  Widget build(BuildContext context) {
    // bool hasMessage = false;
    List<Mail>? mailList = MailData().mailList;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: CustomBanner(title: "Contact RGO"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(CustomColors().blue),
                ),
                onPressed: onCreateMailPressed, // Call the callback when pressed
                child: Text('Create Mail'),
              ),
            ),
          ),
          if (mailList.isEmpty) Column(
            children: [
              Image.asset('assets/emptyMail.png', width: 300),
              Text(
                "You haven't sent any messages to the Resource Generation Office (RGO) yet.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 30),
              Text(
                " Feel free to reach out if you have any questions or need assistance.",
                textAlign: TextAlign.center,
              ),
            ],
          ) else Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: mailList.map((mail) => 
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: (){onMailSelected(mail.id);},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Ensure the background color is set
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    mail.sender.name,
                                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(mail.sentTime),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Text(
                                mail.subject,
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                mail.body,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )

                  )
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
