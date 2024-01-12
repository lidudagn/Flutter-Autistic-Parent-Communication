import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';

class doctor extends StatelessWidget {
  const doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Recommanded Doctor',
              style: normalText(
                  color: Color.fromARGB(255, 235, 230, 230), fontSize: 24),
            ),
          )),
          height: 90,
          width: double.infinity,
          color: ThemeColor.maincolor,
        ),
        Container(
          width: double.infinity,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/doc.jpg'),
                  radius: 40,
                ),
                Expanded(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Doctor solomon tesfaye',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            color: ThemeColor.maincolor),
                      ),
                    ),
                    subtitle: ListView(
                      children: [
                        Text('works at    joycenter'),
                        Text('expriance    8 years'),
                        Text('phone number    0923561220'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 40,
                ),
                Expanded(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Doctor abebech kebede',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            color: ThemeColor.maincolor),
                      ),
                    ),
                    subtitle: ListView(
                      children: [
                        Text('works at    nehmia'),
                        Text('expriance    3 years'),
                        Text('phone number    0923561220'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 40,
                ),
                Expanded(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'Doctor selam alemu',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            color: ThemeColor.maincolor),
                      ),
                    ),
                    subtitle: ListView(
                      children: [
                        Text('works at    nehmia'),
                        Text('expriance    3 years'),
                        Text('phone number    0923561220'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
