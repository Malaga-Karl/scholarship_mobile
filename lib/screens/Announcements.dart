import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/data/announcementData.dart';
import 'package:scholarhip_mobile/models/announcement.dart';

import '../colors.dart';
import '../components/CustomBanner.dart';



class AnnouncementsPage extends StatelessWidget {
  final Function(int) onAnnouncementSelected;
 AnnouncementsPage({super.key, required this.onAnnouncementSelected});

  @override
  Widget build(BuildContext context) {

    List<Announcement> announcments = AnnouncementData().announcments;

    return Scaffold(
      body: Column(
        children: [
          Center(child: CustomBanner(title: "ANNOUNCEMENTS",)),
          Expanded(
            child: SingleChildScrollView(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: announcments.length,
                itemBuilder: (context, index) {
                  final announcement = announcments[index];
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white, // Adding a background color to see the shadow better
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Adjust color and opacity
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10), // Optional: Adds rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(announcement.date),
                          Text(announcement.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                          Text(announcement.content),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                                  onPressed: () {
                                    onAnnouncementSelected(announcement.id);
                                  }, 
                                  child: Text("Read More"),
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

                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

