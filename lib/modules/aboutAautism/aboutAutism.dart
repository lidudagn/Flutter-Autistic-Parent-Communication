import 'package:autism_project/utils/forAwareness.dart';
import 'package:flutter/material.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';

class aboutAutsim extends StatelessWidget {
  const aboutAutsim({Key? key}) : super(key: key);

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
              'About Autism',
              style: normalText(
                  fontSize: 25,
                  color: ThemeColor.maincolor,
                  fontWeight: FontWeight.w700),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Text(
                'Autism spectrum disorder (ASD) is a neurological and developmental disorder that affects how people interact with others, communicate, learn, and behave. Although autism can be diagnosed at any age, it is described as a “developmental disorder” because symptoms generally appear in the first two years of life.',
                style: normalText(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: Text(
                'According to the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), a guide created by the American Psychiatric Association that health care providers use to diagnose mental disorders, people with ASD often have:',
                style: normalText(),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 15),
                child: Text(
                  '* Difficulty with communication and interaction with other people',
                  style: normalText(),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 15),
                child: Text(
                  '* Restricted interests and repetitive behaviors',
                  style: normalText(),
                )),
          ],
        ),
      ),
    ));
  }
}
