import 'package:flutter/material.dart';
import 'package:scholarhip_mobile/colors.dart';
import 'package:scholarhip_mobile/models/mail.dart';
import 'package:scholarhip_mobile/screens/Announcements.dart';
import 'package:scholarhip_mobile/screens/Contact.dart';
import 'package:scholarhip_mobile/screens/Dashboard.dart';
import 'package:scholarhip_mobile/screens/SpecificAnnouncement.dart';
import 'package:scholarhip_mobile/screens/SpecificMail.dart'; // Import SpecificMail
import '../components/InfoBottomSheet.dart';
import 'CreateMailPage.dart';
import 'CreateReplyPage.dart';
import 'SpecificFoundation.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;
  int? selectedScholarshipId;
  int? selectedAnnouncementId;
  String? selectedMailId;
  bool showCreateMail = false;
  bool showReplyMail = false;
  Mail? replyToMail;

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => InfoBottomSheet(),
                );
              },
              icon: CircleAvatar(
                backgroundColor: CustomColors().blue,
                child: const Text(
                  'AH',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: CustomColors().blue,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            selectedScholarshipId = null; // Reset when navigating to other tabs
            selectedAnnouncementId = null; // Reset when navigating to other tabs
            selectedMailId = null;
            showCreateMail = false;
            showReplyMail = false;
          });
        },
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
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
      body: showCreateMail
          ? CreateMailPage(
              onMailCancelled: () {
                setState(() {
                  showCreateMail = false;
                });
              },
            )
          : showReplyMail
              ? CreateReplyPage(
                  mail: replyToMail!,
                  onReplyCancelled: () {
                    setState(() {
                      showReplyMail = false;
                    });
                  },
                )
              : selectedAnnouncementId != null
                  ? SpecificAnnouncement(id: selectedAnnouncementId!)
                  : selectedScholarshipId != null
                      ? SpecificScholarship(id: selectedScholarshipId!)
                      : selectedMailId != null
                          ? SpecificMail(
                              id: selectedMailId!,
                              onReplyPressed: (Mail mail) {
                                setState(() {
                                  replyToMail = mail;
                                  showReplyMail = true;
                                });
                              },
                            )
                          : <Widget>[
                              AnnouncementsPage(
                                onAnnouncementSelected: (int id) {
                                  setState(() {
                                    selectedAnnouncementId = id;
                                  });
                                },
                              ),
                              DashboardPage(
                                onScholarshipSelected: (int id) {
                                  setState(() {
                                    selectedScholarshipId = id;
                                  });
                                },
                              ),
                              ContactPage(
                                onCreateMailPressed: () {
                                  setState(() {
                                    showCreateMail = true;
                                  });
                                },
                                onMailSelected: (String id) {
                                  setState(() {
                                    selectedMailId = id;
                                  });
                                },
                              ),
                            ][currentPageIndex],
    );
  }
}
