import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host/theme/palette.dart';
class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboard;
  final String label;
  final String hintText;

  CustomFormField({
    super.key,
    required this.controller,
    required this.keyboard,
    required this.label,
    required this.hintText
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent,
              spreadRadius: 0,
              blurRadius: 5,
            )
          ]
        ),
        child: TextField(
          controller: controller,
          keyboardType: keyboard,
          decoration: InputDecoration(
            label: Text(label),
            hintText: hintText,
            labelStyle: GoogleFonts.daysOne(
            ),
            suffixIcon: Icon(Icons.check_sharp, color: Colors.green,),
            filled: true,
            fillColor: Palette.backgroundColor
          )
        )
      ),
    );
  }
}
