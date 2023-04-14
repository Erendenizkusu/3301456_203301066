import 'package:flutter/material.dart';

import '../core/textFont.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({Key? key,required this.day,required this.exercises}) : super(key: key);
  final String day;
  final String exercises;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){Navigator.of(context).pushNamed("/exercise");},
        child: Container(
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width*0.9,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(day,style: TextFonts.instance.middleTitle),
                  Text(exercises,style: TextFonts.instance.smallText),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
