import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host/components/popularContainer.dart';
import 'package:host/components/searchField.dart';
import 'package:host/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:random_avatar/random_avatar.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List<List> hotels =[
    [
      "Cotonou",
      "Tamuzo's",
      "assets/images/amar.jpg",
      900.0
    ],
    [
      "Cotonou",
      "Mury's",
      "assets/images/burjAl.jpg",
      1500.0
    ],
    [
      "Porto-Novo",
      "Chic A Gogo",
      "assets/images/moussa.jpg",
      200.0
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  width: 50,
                  child: GestureDetector(
                    onTap: (){
                      Scaffold.of(context).openDrawer();
                    },
                    child: Image.asset("assets/icons/text.png",
                      scale: 9,
                    ),
                  ),
                ),
                RandomAvatar("sayonara", height: 50, width: 50 ),
              ],
            ),
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

            SizedBox(height: 30,),

            Row(
              children: [
                SearchField(),
                Container(
                  width: 50,
                  height: 48,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(87, 87, 87, 1.0),
                        spreadRadius: 1,
                        blurRadius: 10
                      )
                    ]
                  ),
                  child: Image.asset("assets/icons/settings.png", color: Colors.grey[400],),
                )

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Popular",
                  style: GoogleFonts.daysOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                ),
                )
              )
              ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (context, index){
                  return //Text('fef');
                    PopularContainerPage(ville: hotels[index][0], hotelName: hotels[index][1] ,image: hotels[index][2], price: hotels[index][3]);
                },
              ),
            )
          ],
        ),
    );
  }
}
