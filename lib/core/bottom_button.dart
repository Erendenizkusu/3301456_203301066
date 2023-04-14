import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 50,
            alignment: Alignment.center,
            child: Text(text,style: TextFonts.instance.smallText
              ),
            )),
      );
  }
}
