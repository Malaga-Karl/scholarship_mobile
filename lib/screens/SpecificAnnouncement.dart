import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/components/CustomBanner.dart';
import 'package:scholarhip_mobile/data/scholarshipData.dart';

import '../colors.dart';
import '../data/announcementData.dart';


class SpecificAnnouncement extends StatelessWidget {
  final int id;

  SpecificAnnouncement({required this.id});

  @override
  Widget build(BuildContext context) {
    final announcement = AnnouncementData().announcments.firstWhere((ann) => ann.id == id);
    
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBanner(title: announcement.date),
              SizedBox(height: 16),
              Text(
                textAlign: TextAlign.center,
                announcement.title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
        
        
              SizedBox(height: 32),
              Text(announcement.content),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
