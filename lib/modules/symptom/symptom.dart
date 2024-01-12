import 'package:autism_project/utils/forAwareness.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';

class symptom extends StatelessWidget {
  const symptom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: forAwareness(
        "assets/vat.jpg",
        ListView(
          // shrinkWrap: true,
          children: [
            Center(
                child: Text(
              'symptoms of Autism',
              style: normalText(
                  fontSize: 25,
                  color: ThemeColor.maincolor,
                  fontWeight: FontWeight.w700),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Text(
                'People with ASD have behaviors or interests that can seem unusual. These behaviors or interests set ASD apart from conditions defined by problems with social communication and interaction only Examples of restricted or repetitive behaviors and interests related to ASD can include',
                style: normalText(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: Text(
                '-- Repeats words or phrases over and over (called echolalia)',
                style: normalText(),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 15),
                child: Text(
                  '-- Plays with toys the same way every time',
                  style: normalText(),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 15),
                child: Text(
                  '-- Has obsessive interests',
                  style: normalText(),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 15),
                child: Text(
                  '-- Has unusual reactions to the way things sound, smell, taste, look, or feel',
                  style: normalText(),
                )),
          ],
        ),
      ),
    ));
  }
}
