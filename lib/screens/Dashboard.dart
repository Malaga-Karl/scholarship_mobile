import 'package:flutter/material.dart';

import '../models/foundation.dart';


class DashboardPage extends StatelessWidget {

  final List<Foundation> foundations = [
  Foundation(
    name: "Bill & Melinda Gates Foundation",
    desc: "Global health, education, and poverty alleviation",
    slots: 100,
    deadline: "September 11, 2001",
  ),
  Foundation(
    name: "Ford Foundation",
    desc: "Social justice, economic empowerment, and human rights",
    slots: 75,
    deadline: "September 7, 2024",
  ),
  Foundation(
    name: "Rockefeller Foundation",
    desc: "Health, agriculture, economic development, and energy",
    slots: 50,
    deadline: "June 20, 2023",
  ),
  
  Foundation(
    name: "Bill & Melinda Gates Foundation",
    desc: "Global health, education, and poverty alleviation",
    slots: 100,
    deadline: "July 11, 2024",
  ),
  Foundation(
    name: "Ford Foundation",
    desc: "Social justice, economic empowerment, and human rights",
    slots: 75,
    deadline: "November 6, 2025",
  ),

];

 DashboardPage({super.key});

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
              itemCount: foundations.length,
              itemBuilder: (context, index) {
                final foundation = foundations[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(foundation.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foundation.desc),
                        Text('Slots: ${foundation.slots}'),
                        Text('Deadline: ${foundation.deadline}'),
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

