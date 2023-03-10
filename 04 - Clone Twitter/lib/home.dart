import 'package:flutter/material.dart';
import 'package:flutter_application_002/app_bar_twitter.dart';
import 'package:flutter_application_002/content_page.dart';
import 'package:flutter_application_002/drawer_twitter.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarTwitter(),
      drawer: const DrawerTwitter(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        elevation: 0,
        currentIndex: index,
        showSelectedLabels: false,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(index == 0 ? Ionicons.home_sharp : Ionicons.home_outline), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(index == 1 ? Ionicons.search_sharp : Ionicons.search_outline), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(index == 2 ? Ionicons.notifications_sharp : Ionicons.notifications_outline), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(index == 3 ? Ionicons.mail_sharp : Ionicons.mail_outline), label: 'Messages'),
        ],
      ),
      body: SingleChildScrollView(child: ContentPage(index: index)),
    );
  }
}
