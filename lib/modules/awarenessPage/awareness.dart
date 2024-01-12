import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class awareness extends StatelessWidget {
  const awareness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.aboutAutism,
                  );
                },
                child: mycard('assets/autismw.jpg', 'What is Autism?'),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.symptom,
                  );
                },
                child: mycard('assets/symptom.jpg', 'Symptoms of Autism?'),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.foodRecommandation,
                  );
                },
                child: mycard('assets/foood.jpg', 'Food recommandation'),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.doctor,
                  );
                },
                child: mycard('assets/doc.jpg', 'Doctors recommandation'),
              ),
              TextButton(
                onPressed: () {},
                child: mycard(
                    'assets/organ.jpg', 'autism center  recommandation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mycard extends StatelessWidget {
  mycard(this.image, this.text);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            image,
            width: double.infinity,
            height: 200,
            color: Color.fromARGB(255, 145, 141, 141).withOpacity(1),
            colorBlendMode: BlendMode.modulate,
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
        Positioned(
            top: 60,
            child: Row(
              children: [
                SizedBox(
                  width: 39,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ))
      ],
    );
  }
}
