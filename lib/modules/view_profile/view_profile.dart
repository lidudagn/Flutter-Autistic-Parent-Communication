import 'package:autism_project/themes/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/homePage.dart';

class viewProfile extends StatelessWidget {
  const viewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/cover.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Mighty Shambel',
                style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ThemeColor.maincolor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 140,
                    height: 40,
                    child: Center(
                        child: Text(
                      'Edit profile',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 16),
                    )),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: ThemeColor.maincolor,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 140,
                      height: 40,
                      child: Center(
                        child: TextButton(
                          child: Text(
                            'New post',
                            style: GoogleFonts.roboto(
                                color: ThemeColor.maincolor, fontSize: 16),
                          ),
                          onPressed: (() {}),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 234, 242, 248),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 241, 237, 237),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(2, 3))
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('12',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text('Followers',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey)),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 0.75,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text('5',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text('Followers',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //onepost()
          ],
        ),
      ),
    ));
  }
}
