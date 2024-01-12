import 'package:flutter/material.dart';

class forAwareness extends StatelessWidget {
  forAwareness(this.image, this.lists);
  String image;

  Widget lists;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                  ),
                  height: MediaQuery.of(context).size.height * .35,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .65,
                  color: Color.fromARGB(255, 225, 236, 240),
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .28,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * .75,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: lists,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
