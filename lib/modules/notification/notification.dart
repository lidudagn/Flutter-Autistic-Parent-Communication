import 'package:autism_project/modules/notification/notification_controller.dart';
import 'package:autism_project/utils/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:autism_project/themes/color_theme.dart';

class notification extends StatelessWidget {
  notification({
    Key? key,
  }) : super(key: key);
  final List<String> fruits = <String>[
    'Abebe Kebede',
    'hanna alemu',
    'bereket tesfaye',
    'fiker chane',
    'eden haile',
    'meklit seife',
  ];

  final List<String> texts = <String>[
    'liked your photo',
    'commented on your post',
    'followed you',
    'liked your photo',
    'followed you',
    'commented on your post',
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NOtificationController>(builder: (controller) {
      return Scaffold(
          bottomNavigationBar: bottomNavigationBar,
          body: Column(
            
            children: [
              Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Notifications',
                    style: normalText(
                        color: Color.fromARGB(255, 235, 230, 230),
                        fontSize: 24),
                  ),
                )),
                height: 90,
                width: double.infinity,
                color: ThemeColor.maincolor,
              ),
              ListView.builder(
                  //here is ur error and i fixed it by making shrink wrap true
                  shrinkWrap: true,
                  itemCount: fruits.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Row(
                            children: [
                              Text(fruits[index],
                                  style:
                                      normalText(color: ThemeColor.maincolor)),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(texts[index], style: normalText()),
                              ),
                            ],
                          ),
                          subtitle: Text('30 minutes ago',
                              style: normalText(fontSize: 13)),
                        ),
                        const Divider(), // Horizontal Divider Line
                      ],
                    );
                  }),
            ],
          ));
    });
  }
}
