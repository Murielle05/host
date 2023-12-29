import 'package:flutter/material.dart';
import 'package:host/pages/addHotels.dart';
import 'package:host/screens/homeScreen.dart';
import 'package:host/theme/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Five Stars',
      theme: Palette.lightModeTheme,
      home: HomeScreen() ,
      routes: {
        AddHotelsPage.routeName : (context)=> AddHotelsPage()
      },
    );
  }
}

