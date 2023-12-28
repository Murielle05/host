
import 'package:flutter/material.dart';
class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {

  bool liked = false;
  void onPressed(){
    setState(() {
      liked = !liked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(255, 255, 255, 0.5019607843137255)
            ),
            child: IconButton(
              icon: liked ? Icon(Icons.favorite) : Icon(Icons.favorite_outline),
              color: liked ? Colors.red : Colors.white,
              onPressed: onPressed,
              )
        ),
      ],
    );
  }
}
