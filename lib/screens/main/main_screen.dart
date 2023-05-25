import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/side_menu.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:portfolio/screens/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (
              //Hiding Icon
              Responsive.isDesktop(context))
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                //Now each take 50%
                Expanded(
                  //This will take 75%
                  //This takes (2+7=9) so 2/9=0.22 means 22%
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  //It takes 7/9=0 mean 78% width
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                        //Footer
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
