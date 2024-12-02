import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/models/announcement.dart';

import '../colors.dart';
import '../components/CustomBanner.dart';



class AnnouncementsPage extends StatelessWidget {

  final List<Announcement> announcments = [
  Announcement(
    title: "Bill & Melinda Gates Foundation",
    content: "Global health, education, and poverty alleviation",
    date: "September 11, 2001",
  ),
  Announcement(
    title: "Ford Foundation",
    content: "Social justice, economic empowerment, and human rights",
    date: "September 7, 2024",
  ),
  Announcement(
    title: "Rockefeller Foundation",
    content: "Health, agriculture, economic development, and energy",
    date: "June 20, 2023",
  ),
  
  Announcement(
    title: "Bill & Melinda Gates Foundation",
    content: "Global health, education, and poverty alleviation",
    date: "July 11, 2024",
  ),
  Announcement(
    title: "Ford Foundation",
    content: "Social justice, economic empowerment, and human rights",
    date: "November 6, 2025",
  ),

];

 AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                                  onPressed: () {}, 
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

