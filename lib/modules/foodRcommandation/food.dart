import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/utils/forAwareness.dart';
import 'package:google_fonts/google_fonts.dart';

class foodRecommandation extends StatelessWidget {
  foodRecommandation({Key? key}) : super(key: key);
  final List<String> goodLists = [
    'Nuts, especially walnuts.',
    'Seeds, such as chia seeds, hemp seeds, and flax seeds.',
    'Grassfed beef or animal proteins.',
    'Variety of fresh fruits and vegetables.'
  ];
  final List<String> badLists = [
    'Preservatives or pesticides.',
    'Processed meats.',
    'Sugars or refined sugars',
    'Glutens, such as pasta and bread.',
    'Corn'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            forAwareness(
              'assets/food.jpg',
              SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'What foods are good for autism?',
                      style: normalText(
                          fontFamily: 'Poppins',
                          color: ThemeColor.maincolor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: goodLists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.check_circle,
                                color: ThemeColor.maincolor,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(goodLists[index]),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'What foods should be avoided with autism?',
                      style: normalText(
                          fontFamily: 'Poppins',
                          color: ThemeColor.maincolor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: goodLists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.check_circle,
                                color: ThemeColor.maincolor,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(goodLists[index]),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
