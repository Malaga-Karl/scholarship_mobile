import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/components/CustomBanner.dart';

import '../colors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {

    bool hasMessage = false;

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
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(CustomColors().blue),
                ),
                
                onPressed: () {},
                child: Text('Create Mail'),
              ),
            ),
          ),
           Visibility(
              visible: !hasMessage,
              child: Column(
                children: [
                  Image.asset('assets/emptyMail.png', width: 300,),
                  Text("You haven't sent any messages to the Resource Generation Office (RGO) yet.", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold,),),
                  SizedBox(height: 30,),
                  Text(" Feel free to reach out if you have any questions or need assistance.", textAlign: TextAlign.center,)
                ],
              ),
            )
        ],
      ),
    );
  }
}