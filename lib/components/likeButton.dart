import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {

  late bool liked = false ;

  void onPressed() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      liked = !liked;
      prefs.setBool("like", liked);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    likeInit();
  }

  void likeInit() async {
    final prefs = await SharedPreferences.getInstance();
    var liked = prefs.getBool("like");
    setState(() {
      this.liked = liked!;
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
              icon: liked! ? Icon(Icons.favorite) : Icon(Icons.favorite_outline),
              color: liked! ? Colors.red : Colors.white,
              onPressed: onPressed,
              )
        ),
      ],
    );
  }
}
