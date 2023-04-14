import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';
import 'package:get_invincible/product/exercise.dart';
import 'package:get_invincible/product/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> intValues = [];
    for(int i = 0; i<20; i++){
      int intValue = Random().nextInt(17)+8;
      print(intValue);
      intValues.add(intValue);
    };
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(Texts().homeScreenTitle,style: TextFonts.instance.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children:  [
                SizedBox(height: 10),
                ExerciseCard(day: 'Gün 1',exercises: '${intValues[0]} hareket'),
                ExerciseCard(day: 'Gün 2',exercises: '${intValues[1]} hareket'),
                ExerciseCard(day: 'Gün 3',exercises: '${intValues[2]} hareket'),
                ExerciseCard(day: 'Gün 4',exercises: '${intValues[3]} hareket'),
                ExerciseCard(day: 'Gün 5',exercises: '${intValues[4]} hareket'),
                ExerciseCard(day: 'Gün 6',exercises: '${intValues[5]} hareket'),
                ExerciseCard(day: 'Gün 7',exercises: '${intValues[6]} hareket'),
                ExerciseCard(day: 'Gün 8',exercises: '${intValues[7]} hareket'),
                ExerciseCard(day: 'Gün 9',exercises: '${intValues[8]} hareket'),
                ExerciseCard(day: 'Gün 10',exercises: '${intValues[9]} hareket'),
                ExerciseCard(day: 'Gün 11',exercises: '${intValues[10]} hareket'),
                ExerciseCard(day: 'Gün 12',exercises: '${intValues[11]} hareket'),
                ExerciseCard(day: 'Gün 13',exercises: '${intValues[12]} hareket'),
                ExerciseCard(day: 'Gün 14',exercises: '${intValues[13]} hareket'),
                ExerciseCard(day: 'Gün 15',exercises: '${intValues[14]} hareket'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
