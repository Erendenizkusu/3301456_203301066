import 'package:flutter/material.dart';

import '../core/textFont.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({Key? key}) : super(key: key);

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/insta_logo.png',height: 80,width: 80,),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("@eren.denizkusu",style: TextFonts.instance.middleText),
                  SizedBox(width: 10,),
                  Text("@get_invincible",style: TextFonts.instance.middleText),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset("images/email_logo.png",height: 80,width: 80),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("erennn.17@hotmail.com",style: TextFonts.instance.middleText),
                  SizedBox(width: 10,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
