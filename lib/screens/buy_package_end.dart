import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class BuyPackageEnd extends StatefulWidget {
  const BuyPackageEnd({Key? key}) : super(key: key);



  @override
  State<BuyPackageEnd> createState() => _BuyPackageEndState();
}

class _BuyPackageEndState extends State<BuyPackageEnd> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),
            () => Navigator.of(context).pushNamed("/welcome")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/succesful_screen.jpg"),
                Text('Ödemeniz Başarıyla Alında 3 sn içerisinde ana sayfaya yönlendirileceksiniz.', style: TextFonts.instance.middleText,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
