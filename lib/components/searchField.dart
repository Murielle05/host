import 'package:flutter/material.dart';
import 'package:host/theme/palette.dart';
class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
          blurRadius: 5,
          spreadRadius: 0,
          color: Color.fromRGBO(255, 255, 255, 1.0),
            blurStyle: BlurStyle.inner
        ),
        ]

      ),
      child: TextField(
        strutStyle: StrutStyle(

        ),
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Search Location ...",
          hintStyle: TextStyle(color: Colors.grey[500]),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none /*OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Palette.backgroundColor
            ),
            borderRadius: BorderRadius.circular(15)
          )*/
        ),
      ),
    );
  }
}
