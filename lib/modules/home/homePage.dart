// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:autism_project/model/feed_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:like_button/like_button.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'package:autism_project/model/feed.dart';
import 'package:autism_project/modules/home/home_controller.dart';
import 'package:autism_project/routes/routes.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/utils/bottomNavigation.dart';

import '../chat/chat.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: Color.fromARGB(255, 253, 254, 255),
        body: SafeArea(
          // bottom: false,....

          child: ListView(
            children: [
              StickyHeader(
                  header: Container(
                    color: Color.fromARGB(255, 253, 254, 255),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.profile);
                                },
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/profile.jpg'),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text(
                                'autos',
                                style: TextStyle(
                                  color: ThemeColor.maincolor,
                                  fontFamily: 'italic',
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              TextButton.icon(
                                  onPressed: () {
                                    Get.toNamed(
                                      AppRoutes.chat,
                                    );
                                  },
                                  icon: Icon(
                                    Icons.chat_rounded,
                                    color: Color.fromARGB(255, 136, 189, 206),
                                    size: 30,
                                  ),
                                  label: Text(''))
                            ],
                          ),
                        ),
                        search(),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20, right: 20),
                        //   child: Material(
                        //     elevation: 20.0,
                        //     borderRadius: BorderRadius.all(Radius.circular(30)),
                        //     shadowColor: Colors.white,
                        //     child: Padding(
                        //       padding: const EdgeInsets.only(left: 20, right: 20),
                        //       child: TextFormField(
                        //         obscureText: true,
                        //         autofocus: false,
                        //         decoration: InputDecoration(
                        //             icon: new Icon(Icons.search,
                        //                 color: ThemeColor.maincolor),
                        //             hintText: 'search',
                        //             hintStyle: normalText(),
                        //             fillColor: Colors.white,
                        //             filled: true,
                        //             contentPadding: EdgeInsets.fromLTRB(
                        //                 5.0, 10.0, 20.0, 10.0),
                        //             enabledBorder: OutlineInputBorder(
                        //                 borderRadius: BorderRadius.circular(5.0),
                        //                 borderSide: BorderSide(
                        //                     color: Colors.white, width: 3.0))),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                  content: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.list.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(color: Colors.white)
                                  ]),
                                  child: Column(
                                    children: [
                                      onepost(
                                        feed: controller.list.elementAt(index),
                                        controller: controller,
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      reactions(
                                        feed: controller.list.elementAt(index),
                                      ),
                                      // profile('assets/profile.jpg',
                                      //     'hanna kebede', '1hr ago'),
                                      Container(
                                          width: 325,
                                          height: 225,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      15) //                 <--- border radius here
                                                  ),
                                              color: Colors.white,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                    'assets/poyst2.jpg',
                                                  )
                                                  ))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ))
            ],
          ),
        ),
      );
    });
  }
}

class reactions extends StatefulWidget {
  FeedHome? feed;
  reactions({
    Key? key,
    this.feed,
  }) : super(key: key);

  @override
  State<reactions> createState() => _reactionsState();
}

class _reactionsState extends State<reactions> {
  String? categoryValue;
  bool report = false;
  @override
  Widget build(BuildContext context) {
    String? userTypeValue;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 245, 241, 241),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(1, 2))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LikeButton(
              size: 22,
            ),
            Text(
              '300',
              style: normalText(),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                  onPressed: () {
                    Get.toNamed(AppRoutes.comment);
                  },
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.grey,
                  ),
                  label: Text(
                    '56',
                    style: normalText(),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
                label: Text(
                  '56',
                  style: normalText(),
                )),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                TextButton.icon(
                    onPressed: () {
                      setState(() {
                        report = !report;
                      });
                    },
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    label: Text(
                      '',
                      style: normalText(),
                    )),
                report
                    ? Container(
                        width: 70,
                        height: 30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color.fromARGB(255, 230, 227, 227),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 245, 241, 241),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(1, 2))
                            ]),
                        child: const Center(
                            child: Text(
                          'Report',
                        )))
                    : Text('')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class onepost extends StatelessWidget {
  FeedHome feed;
  HomeController controller;
  onepost({
    Key? key,
    required this.feed,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        profile('assets/profile.jpg', 'hanna kebede', '1hr ago'),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 18),
          child: Text(
            feed.text,
            style: normalText(),
          ),
        ),
        Container(
            width: 325,
            height: 225,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(
                        15) //                 <--- border radius here
                    ),
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(feed.post_img)))),
      ],
    );
  }
}

class profile extends StatelessWidget {
  profile(this.image, this.name, this.time);
  String image;
  String name;
  String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: normalText(fontSize: 16),
              ),
              Text(
                time,
                style: normalText(fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
