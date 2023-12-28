import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host/components/likeButton.dart';
import 'package:host/theme/palette.dart';
class PopularContainerPage extends StatelessWidget {
  final String ville;
  final String hotelName;
  final String image;
  final double price;

  PopularContainerPage({
    super.key,
    required this.ville,
    required this.hotelName,
    required this.image,
    required this.price
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: 290,
        height: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          image: DecorationImage(
            image:  AssetImage(this.image),
            fit: BoxFit.fill)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LikeButton(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: GlassContainer.clearGlass(
                height: 120,
                width: 290,
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      Text(this.ville,
                        style: GoogleFonts.daysOne(
                          fontSize: 15,
                      ),),
                      Text(this.hotelName,style: GoogleFonts.daysOne(
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),),
                      Row(
                        children: [
                          Text(
                            "\$"+this.price.toString(),
                            style: GoogleFonts.daysOne(
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            "/night",
                            style: GoogleFonts.daysOne(
                              fontSize: 12,
                              color: Colors.grey[400]
                            ),
                          )
                        ],
                      )

                      ]
                  ),
                ),
              ),
            )

          ]
        )
      ),
    );
  }
}
