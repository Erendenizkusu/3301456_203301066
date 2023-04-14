import 'package:flutter/material.dart';

import '../core/textFont.dart';


class Exercises extends StatelessWidget {
  Exercises({Key? key,required this.image,required this.exercise,required this.time}) : super(key: key);

  String image;
  String exercise;
  String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
          child: Image.asset(image,fit: BoxFit.fill),
          height: 100,
          width: 100,
        ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exercise, style: TextFonts.instance.middleText),
                const SizedBox(height: 5),
               Text(time, style: TextFonts.instance.weekText),
              ],
            ),
          ),
      ]),
    );
  }
}

