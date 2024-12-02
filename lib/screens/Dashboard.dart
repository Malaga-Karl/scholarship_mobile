import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/colors.dart';
import 'package:scholarhip_mobile/data/scholarshipData.dart';

import '../components/CustomBanner.dart';
import '../models/scholarship.dart';


class DashboardPage extends StatelessWidget {
  final Function(int) onScholarshipSelected;
 DashboardPage({super.key, required this.onScholarshipSelected});

  List<Scholarship> scholarships = ScholarshipData().scholarships;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: CustomBanner(title: "PARTNERED FOUNDATIONS' SCHOLARSHIP OFFERS",),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {}, 
                child: Text("Filter"),
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(CustomColors().blue),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: scholarships.length,
                itemBuilder: (context, index) {
                  final scholarship = scholarships[index];
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(scholarship.image!, width: 200,),
                        ),
                        Text(scholarship.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${scholarship.slots} slots left"
                                  ),
                                  Text(
                                    "Deadline: ${scholarship.deadline}"
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  onScholarshipSelected(scholarship.id);
                                }, 
                                child: Text("Apply"),
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                  backgroundColor: WidgetStateProperty.all<Color>(CustomColors().gold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
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

