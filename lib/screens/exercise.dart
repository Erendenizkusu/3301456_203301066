import 'package:flutter/material.dart';
import 'package:get_invincible/core/bottom_button.dart';
import 'package:get_invincible/product/exercises.dart';
import 'package:get_invincible/product/texts.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomButton(text: Texts().bottomButtonText),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             SizedBox(
              width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset('images/ben.jpg', fit: BoxFit.cover)),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Dead Bug'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Russian Twist'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'V-Ups'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Bicycle Crunch'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Mountain Climbers'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Jumping Jack'),
            Exercises(image: 'images/atlama_krikolar.jpg',time: '20:00',exercise: 'Plank'),
          ],
        ),
      ),
    );
  }
}
