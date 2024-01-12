import 'package:autism_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:autism_project/themes/color_theme.dart';

class chat extends StatefulWidget {
  chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 248, 251),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Messages',
                        style: GoogleFonts.oswald(
                            fontSize: 30, color: ThemeColor.maincolor)),
                  ),
                ],
              ),
              search(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  print('object');
                  Get.toNamed(
                    AppRoutes.detailChat,
                  );
                },
                child: lists(),
              ),
              SizedBox(
                height: 3,
              ),
              lists(),
              SizedBox(
                height: 3,
              ),
              lists(),
              SizedBox(
                height: 3,
              ),
            ],
          ),
        ));
  }

  ListTile lists() {
    return ListTile(
      trailing: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text('3 days ago'),
      ),
      tileColor: Colors.white,
      title: Text(
        'mighty shambel',
        style: GoogleFonts.robotoSlab(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 74, 73, 73)),
      ),
      subtitle: Text('heyy endet nesh...exam aleeee?'),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
      ),
    );
  }
}

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 241, 237, 237),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3))
            ]),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Container(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'search', border: InputBorder.none),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 10),
            //   child: Icon(
            //     Icons.search,
            //     color: Colors.grey,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
