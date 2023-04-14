import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  const DarkButton({Key? key,required this.text,this.name = "welcome"}) : super(key: key);

  final String text;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.black),
        onPressed: () {
          Navigator.of(context).popAndPushNamed("/$name");
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
