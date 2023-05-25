import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedWidget extends StatefulWidget {
  final String text;

  final String? label;

  const ExpandedWidget({Key? key, required this.text,required this.label  }) : super(key: key);

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {

  late String firstHalf;
  late String secondHalf;
  bool flag = true;




  @override
  void initState() {
    super.initState();
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 250);
      secondHalf = widget.text.substring(251, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        child: secondHalf.length == ""
            ? Text(widget.text)
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.label!,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15),
                    ),
                    Text(
                      flag ? firstHalf : widget.text,
                      style: GoogleFonts.poppins(
                          color: Colors.blueGrey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          flag = !flag;
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            "Read More",
                            style: GoogleFonts.akshar(color: Colors.amber,fontSize: 20),
                          ),
                          Icon(
                            flag?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
  }
}
