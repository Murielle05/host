import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomButton extends StatelessWidget {

  void Function()? onPressed;
  CustomButton ({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            side: BorderSide(

            )
          ),
          child: Text(
              "Enregistrer",
              style: GoogleFonts.daysOne(
                color: Colors.blueAccent

              )))
    );
  }
}
