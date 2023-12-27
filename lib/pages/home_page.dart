import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host/components/searchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Find deals ",
            style: GoogleFonts.daysOne(
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),
          ),
          Text(
              "on the best Hotels ",
            style: GoogleFonts.daysOne(
              fontSize: 30,
              fontWeight: FontWeight.w400
            ),
          ),

          SizedBox(height: 15,),

          Row(
            children: [
              SearchField(),
              Icon(Icons.sync_alt_sharp),
            ],
          )
        ],
      ),
    );
  }
}
