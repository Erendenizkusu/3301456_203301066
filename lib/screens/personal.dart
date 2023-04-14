import 'package:flutter/material.dart';
import 'package:get_invincible/product/list_tile.dart';
import 'package:get_invincible/product/texts.dart';
import '../core/textFont.dart';


class Personel extends StatelessWidget {
  const Personel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Texts().personalTitle, style: TextFonts.instance.boldText),
                    const SizedBox(height: 25),
                    const CustomListTile(icon: Icons.height,title: 'Boy',rightIcon: Icons.send),
                    const CustomListTile(icon: Icons.account_circle_rounded,title: 'Kilo',rightIcon: Icons.send),
                    const CustomListTile(icon: Icons.accessibility_new,title: 'Bki',rightIcon: Icons.send),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: Image.asset('images/bki.png', fit: BoxFit.cover),
                      ),
                    ),
                      ]),
                    ),
                ),
              ),
            ),
          ),
    );
  }
}
