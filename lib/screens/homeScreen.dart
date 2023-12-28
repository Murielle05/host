import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:host/pages/calendar_page.dart';
import 'package:host/pages/home_page.dart';
import 'package:host/pages/location_page.dart';
import 'package:host/pages/seetings_page.dart';
import 'package:random_avatar/random_avatar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    LocationPage(),
    CalendarPage(),
    SettingsPage()
  ];

  void _navigate(int index){

    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Text("Hostel Five Stars")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Location"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.calendar_today_outlined),
              title: Text("Calendar"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => _navigate(index),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.location_on_outlined),
            title: Text('Location'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            title: Text('Calendar'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
