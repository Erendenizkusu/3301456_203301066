import 'package:flutter/material.dart';
import 'package:get_invincible/core/textFont.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programlar", style: TextFonts.instance.appBarTitle),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("/package");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/card_image.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Text(
                    'Evde Karın Egzersizleri',
                    style: TextFonts.instance.imageFront,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("/package");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/card_image.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Text(
                    'Evde Ağırlık Antrenmanları',
                    style: TextFonts.instance.imageFront
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
