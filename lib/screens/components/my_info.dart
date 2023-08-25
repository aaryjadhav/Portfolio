import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            //SizedBox(height: 30,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/aary.png"),
            ),
            Spacer(),
            Text("Aary Jadhav",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text("Flutter Developer | Video Editior at\nBranding Catalyst Pvt.Ltd"
                "",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                )
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}