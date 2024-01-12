import 'package:autism_project/themes/color_theme.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail extends StatefulWidget {
  detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.maincolor,
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              'Meklit Seife',
              style: GoogleFonts.notoSans(),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.RECEIVE),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 237, 243, 245),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(3, 3))
                  ]),
              child: Text('hey..how are u doing?'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 100, right: 20),
          child: ClipPath(
            clipper: LowerNipMessageClipper(MessageType.SEND),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 234, 239),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: Text(
                  'i am fine thanks for asking  what about u? i hope you are fine'),
            ),
          ),
        ),
      ]),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.white,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3))
        ], color: Color.fromARGB(255, 233, 230, 230)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.add,
                color: ThemeColor.maincolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: ThemeColor.maincolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: 260,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'type something...', border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                color: ThemeColor.maincolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
