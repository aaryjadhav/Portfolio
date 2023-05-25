import 'package:flutter/material.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //For Dark Theme & Modify it as our need
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white).copyWith(
            bodyText1: TextStyle(color: bodyTextColor),
            bodyText2: TextStyle(color: bodyTextColor),
          )
      ),
      home: Splash(),
    );
  }
}

