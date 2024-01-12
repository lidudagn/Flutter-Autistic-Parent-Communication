import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import '../home/homePage.dart';

class comment extends StatefulWidget {
  comment({Key? key}) : super(key: key);

  @override
  State<comment> createState() => _commentState();
}

class _commentState extends State<comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: SingleChildScrollView(
          // controller: controller,
          child: Column(
            children: [
              // onepost(),
              // reactions(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 245, 248, 250),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 231, 233, 235),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 3))
                      ]),
                  child: Column(
                    children: [
                      onecomment(),
                      Divider(),
                      onecomment(),
                      Divider(),
                      onecomment(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.white,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3))
        ], color: Color.fromARGB(255, 253, 250, 250)),
        child: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'type something...', border: InputBorder.none),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: main_button('comment', () {}, 0, 10))
          ],
        ),
      ),
    );
  }
}

class onecomment extends StatelessWidget {
  const onecomment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Center(child: Text('3hr ago')),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'meklit seife',
            style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w600, color: ThemeColor.maincolor),
          ),
          Text(
            'wow this is amazing i didnt know that before',
            style:
                GoogleFonts.roboto(color: Color.fromARGB(255, 139, 135, 135)),
          ),
        ],
      ),
    );
  }
}
