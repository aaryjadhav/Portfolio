import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            //SizedBox(height: 30,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/pp.png"),
            ),
            Spacer(),
            Text("Aary Jadhav",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text("Computer Enginerring Student &\nFlutter Developer",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w200,
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