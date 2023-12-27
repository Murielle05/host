import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      appBar: AppBar(
        title: Text(""),
        actions: [
          RandomAvatar('saytoonz', height: 50, width: 50)
        ],
      ),
    );
  }
}
