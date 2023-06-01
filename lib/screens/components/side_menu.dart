import 'dart:isolate';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/screens/components/animated_circular_progress_indicator.dart';
import 'package:portfolio/screens/components/animated_linear_progress_indicator.dart';
import 'package:portfolio/screens/components/area_info_text.dart';
import 'package:portfolio/screens/components/coding.dart';
import 'package:portfolio/screens/components/knowledges.dart';
import 'package:portfolio/screens/components/my_info.dart';
import 'package:portfolio/screens/components/pdf_view.dart';
import 'package:portfolio/screens/components/side_menu.dart';
import 'package:portfolio/screens/components/skills.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfoText(
                  title: "Residence",
                  text: "India",
                ),
                AreaInfoText(
                  title: "City",
                  text: "Thane",
                ),
                AreaInfoText(
                  title: "Age",
                  text: "18",
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Knowledges(),
                Divider(),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pdfview(

                      )));
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text("VIEW CV",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 15)),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding),
                  color: Color(0xFF24242E),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: ()=> launch("https://www.linkedin.com/in/aary-jadhav-700b21236/"),
                        icon: SvgPicture.asset("assets/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: ()=> launch("https://github.com/aaryjadhav"),
                        icon: SvgPicture.asset("assets/github.svg"),
                      ),
                      IconButton(
                        onPressed: ()=> launch("https://twitter.com/theaaryjadhav"),
                        icon: SvgPicture.asset("assets/twitter.svg"),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding),
                 // color: Color(0xFF24242E),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(),
                      Text("By Aary Jadhav",style: GoogleFonts.poppins(color: Colors.white,fontSize: 10)),
                      Spacer(),
                    ],
                  ),
                ),

              ],
            ),
          ))
        ],
      ),
    );
  }
}
