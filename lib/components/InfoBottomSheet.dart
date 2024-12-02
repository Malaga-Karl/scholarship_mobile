import 'package:flutter/material.dart';

import '../colors.dart';

class InfoBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors().blue,
      padding: EdgeInsets.all(16.0),
      height: 1000,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                  backgroundColor: Colors.white,
                  child: const Text('AH', style: TextStyle(color: Colors.black),),
                ),
                SizedBox(height: 16,),
                Text('Welcome, ',  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
                Text("John Sin", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                Text("2021-10298", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
                Text("Computer Science", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
                SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Update Profile"),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(CustomColors().gold),
                  ),
                ),
                Divider(),
                Spacer(),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Logout"),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(4), )),
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(CustomColors().red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
