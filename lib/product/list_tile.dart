import 'package:flutter/material.dart';

import '../core/textFont.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key,required this.icon,required this.title,required this.rightIcon}) : super(key: key);

  final IconData icon;
  final String title;
  final IconData rightIcon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: TextFonts.instance.middleText),
        trailing: Icon(rightIcon),
      ),
    );
  }
}
