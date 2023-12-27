import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          RandomAvatar('saytoonz', height: 50, width: 50)
        ],
      ),
    );
  }
}
