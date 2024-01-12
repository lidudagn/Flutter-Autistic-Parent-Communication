import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../themes/color_theme.dart';
import '../../themes/text_theme.dart';
import '../../utils/bottomNavigation.dart';
import 'recommended_controller.dart';

class RecommendedUserPage extends StatefulWidget {
  const RecommendedUserPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecommendedUserPageState();
}

class _RecommendedUserPageState extends State<RecommendedUserPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecommendedUserController>(builder: ((controller) {
      return Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        body: Column(
          children: [
            Container(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Follow sugestions',
                  style: normalText(
                      color: Color.fromARGB(255, 235, 230, 230), fontSize: 24),
                ),
              )),
              height: 90,
              width: double.infinity,
              color: ThemeColor.maincolor,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: ListTile(
                        title: Text(
                          controller.list[index].fullName,
                          style: normalText(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          '${controller.list[index].follower} Followers',
                          style: normalText(fontSize: 12),
                        ),
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: Image.memory(Uint8List.fromList(
                                    controller.decodeProImage(
                                        controller.list[index].proImageUrl)))
                                .image),
                        trailing: ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: Text('Follow',
                                style: poppinsRegular(fontSize: 14)),
                          ),
                          onPressed: () {
                            controller.followUser(
                                controller.list.elementAt(index).id);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ThemeColor.maincolor,
                          ),
                        ),
                      ),
                    ));
                  }),
            ),
          ],
        ),
      );
    }));
  }
}
