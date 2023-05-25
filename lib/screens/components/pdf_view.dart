import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:portfolio/screens/constants.dart';

class pdfview extends StatelessWidget {
  const pdfview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage1 = 'assets/gekko.png';

    return Scaffold(
        appBar: AppBar(
          elevation: 15,
          backgroundColor: darkColor,
          leading: IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: Text(
            "CV/Resume",
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
        backgroundColor: darkColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: Image.asset(
                  "assets/aary.jpg",

                  width: 500,
                ),
              ),
              SizedBox(height: defaultPadding,),
              // Container(
              //   padding: EdgeInsets.fromLTRB(5, 0, 5, 100),
              //   child: Image.asset(
              //     "assets/aary.jpg",
              //
              //     width: 500,
              //   ),
              // ),
            ],
          ),
        ),

    );
  }
}
