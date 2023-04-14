import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class Extras extends StatefulWidget {
  const Extras({Key? key}) : super(key: key);

  @override
  State<Extras> createState() => _ExtrasState();
}

class _ExtrasState extends State<Extras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text('Uzaktan Eğitim', style:  TextFonts.instance.boldText),
                onTap: () {
                  Navigator.of(context).pushNamed('/package');
                },
              ),
              InkWell(
                child: Text('Blok Yazıları', style:  TextFonts.instance.boldText),
                onTap: () {
                  Navigator.of(context).pushNamed('/block');
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/social');
                },
                child: Text('İletişim Bilgileri', style:  TextFonts.instance.boldText)),
            ],
          ),
        ),
      ),
    );
  }
}
