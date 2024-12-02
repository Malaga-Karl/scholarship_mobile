import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/colors.dart';

import '../components/CustomBanner.dart';
import '../models/foundation.dart';


class DashboardPage extends StatelessWidget {

  final List<Foundation> foundations = [
  Foundation(
    image: "assets/charityfirst.png",
    name: "Bill & Melinda Gates Foundation",
    desc: "Global health, education, and poverty alleviation",
    slots: 100,
    deadline: "September 11, 2001",
  ),
  Foundation(
    image: "assets/charityfirst.png",
    name: "Ford Foundation",
    desc: "Social justice, economic empowerment, and human rights",
    slots: 75,
    deadline: "September 7, 2024",
  ),
  Foundation(
    image: "assets/charityfirst.png",
    name: "Rockefeller Foundation",
    desc: "Health, agriculture, economic development, and energy",
    slots: 50,
    deadline: "June 20, 2023",
  ),
  
  Foundation(
    image: "assets/charityfirst.png",
    name: "Bill & Melinda Gates Foundation",
    desc: "Global health, education, and poverty alleviation",
    slots: 100,
    deadline: "July 11, 2024",
  ),
  Foundation(
    image: "assets/charityfirst.png",
    name: "Rockefeller Foundation",
    desc: "Health, agriculture, economic development, and energy",
    slots: 50,
    deadline: "June 20, 2023",
  ),
  
  Foundation(
    image: "assets/charityfirst.png",
    name: "Bill & Melinda Gates Foundation",
    desc: "Global health, education, and poverty alleviation",
    slots: 100,
    deadline: "July 11, 2024",
  ),
];

 DashboardPage({super.key});

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
                itemCount: foundations.length,
                itemBuilder: (context, index) {
                  final foundation = foundations[index];
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
                          child: Image.asset(foundation.image!, width: 200,),
                        ),
                        Text(foundation.name, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${foundation.slots} slots left"
                                  ),
                                  Text(
                                    "Deadline: ${foundation.deadline}"
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {}, 
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

