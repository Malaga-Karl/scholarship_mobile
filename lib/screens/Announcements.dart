import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/models/announcement.dart';



class AnnouncementsPage extends StatelessWidget {

  final List<Announcement> announcment = [
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
          Center(
            child: Text("Dashboard"),
          ),
          SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: announcment.length,
              itemBuilder: (context, index) {
                final foundation = announcment[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(foundation.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foundation.content),
                        Text('Date: ${foundation.date}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

