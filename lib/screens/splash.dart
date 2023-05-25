import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/screens/constants.dart';




class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: darkColor,
        body: Center(
          child: Lottie.network(
              "https://assets3.lottiefiles.com/packages/lf20_zsmmmni7.json",
              controller: _controller , onLoaded: (compos) {
                _controller
              ..duration = compos.duration
              ..forward().then((value) async {

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));

              });
          }),
        ));
  }
}
