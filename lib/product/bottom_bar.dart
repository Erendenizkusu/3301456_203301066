import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key,required this.icons,required this.text}) : super(key: key);

  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
    icon: Icon(icons),
    label: text,
    ),
    ]);
  }
}
