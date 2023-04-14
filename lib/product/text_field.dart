import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({Key? key,required this.label_text,required this.hint_text,required this.icon,this.controller}) : super(key: key);

  final TextEditingController? controller;
  final String label_text;
  final String hint_text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text('$label_text'),
          prefixIcon: Icon(icon),
          hintText: hint_text),
    );
  }
}
