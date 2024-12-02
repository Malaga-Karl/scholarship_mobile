import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/data/scholarshipData.dart';

import '../colors.dart';


class SpecificScholarship extends StatelessWidget {
  final int id;

  SpecificScholarship({required this.id});

  @override
  Widget build(BuildContext context) {
    final scholarship = ScholarshipData().scholarships.firstWhere((sch) => sch.id == id);
    
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // if (scholarship.image != null)
              //   Image.asset(scholarship.image!),
              SizedBox(height: 16),
              Text(
                textAlign: TextAlign.center,
                scholarship.title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
        
        
              SizedBox(height: 32),
              Text("About:", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
              Text(scholarship.desc),
              SizedBox(height: 8),
        
              SizedBox(height: 32),
              Text("Eligibility Criteria:", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
              // Text('Deadline: ${scholarship.deadline}'),
              Column(
                children: scholarship.eligibility.map((criterion) => Text('- $criterion')).toList(),
            ),
        
              SizedBox(height: 32),
              Text("Requirements:", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
              Column(
                children: scholarship.reqs.map((requirement) => Text('- $requirement')).toList(),
            ),
        
            SizedBox(height: 32),
            Text("Application Deadline:", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            Text('The application deadline for the ${scholarship.title} is until ${scholarship.deadline}'),
            
            SizedBox(height: 32),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(CustomColors().gold),
                ),
                
                onPressed: () {},
                child: Text('Apply Now!'),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
