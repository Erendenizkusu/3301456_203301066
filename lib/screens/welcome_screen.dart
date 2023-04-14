import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';
import 'package:get_invincible/product/texts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: buildBoxDecoration(),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Texts().welcomeTitle, style: TextFonts.instance.imageFront),
              Column(
                children: [
                  loginElevatedButton(context),
                  registerElevatedButton(context),
          ],
        )
      ],
    ),
    ),
    ),
    ),
    );
  }

  ElevatedButton registerElevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {Navigator.of(context).pushNamed("/register");},
      child: Text(Texts().register),
    );
  }

  ElevatedButton loginElevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {Navigator.of(context).pushNamed("/login");},
      child: Text(Texts().login),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover, image: AssetImage("images/abs_background.jpg")));
  }
}
