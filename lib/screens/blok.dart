import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';
import 'package:get_invincible/product/texts.dart';

class BlockInformations extends StatelessWidget {
  const BlockInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('Kreatin Nedir?', style: TextFonts.instance.boldText),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Texts().whatIsCreatin),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text('Kreatin Nerde Bulunur?', style: TextFonts.instance.boldText),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Texts().whereIsCreatin),
          ),

        ],
      ),
    );
  }
}
