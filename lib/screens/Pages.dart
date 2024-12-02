import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/colors.dart';
import 'package:scholarhip_mobile/screens/Announcements.dart';
import 'package:scholarhip_mobile/screens/Contact.dart';
import 'package:scholarhip_mobile/screens/Dashboard.dart';

import '../components/InfoBottomSheet.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/logoNgPLM.png"),
        ),
        title: Text("PLM Scholarship System"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: (){
                showModalBottomSheet( 
                  context: context, 
                  builder: (context) => InfoBottomSheet(),
                  );
              }, 
                
              icon: CircleAvatar(
                backgroundColor: CustomColors().blue,
                child: const Text('AH', style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: CustomColors().blue,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            // selectedIcon: Icon(Icons.home)
            icon: Icon(Icons.home,),
            label: 'Announcements',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.messenger_sharp),
            label: 'Contact RGO',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        AnnouncementsPage(),

        /// Notifications page
        DashboardPage(),

        /// Messages page
        ContactPage()
      ][currentPageIndex],
    );
  }
}
